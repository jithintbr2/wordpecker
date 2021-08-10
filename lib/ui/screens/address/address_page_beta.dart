import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_place/google_place.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/address/bloc/address_bloc.dart';
import 'package:woodle/ui/screens/address/widgets/gps_indicator.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class AddressPage extends HookWidget {
  final bool? returnToPrevious;
  final int? franchiseId;
  const AddressPage({Key? key, this.returnToPrevious, this.franchiseId})
      : super(key: key);

  void _autoCompleteSearch(GooglePlace googlePlace,
      ValueNotifier<List<AutocompletePrediction>> predictions, String value) {
    googlePlace.autocomplete.get(value).then((results) {
      if (results != null && results.predictions != null)
        predictions.value = results.predictions!;
    });
  }

  @override
  Widget build(BuildContext context) {
    GooglePlace _googlePlace = GooglePlace(Config.kGoogleApiKey);
    final _searchResults = useState<List<AutocompletePrediction>>([]);
    final _user = context.read<AuthenticationCubit>().state.user;
    final _focusNode = useFocusNode();
    final _locationSearchController = useTextEditingController();
    final _isDeleting = useState(false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
        actions: [
          IconButton(
              onPressed: () => _isDeleting.value = !_isDeleting.value,
              icon: _isDeleting.value
                  ? Icon(Icons.delete_forever)
                  : Icon(Icons.delete))
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                        child: TextField(
                      style: TextStyle(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.7)),
                      controller: _locationSearchController,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                          // isDense: true,
                          border: InputBorder.none,
                          hintText: "Search for locations",
                          hintStyle: TextStyle(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5)),
                          suffixIcon: _locationSearchController.text.isNotEmpty
                              ? IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    _focusNode.unfocus();
                                    _locationSearchController.clear();
                                    _searchResults.value = [];
                                    // _isSearching.value = false;
                                  },
                                )
                              : null),
                      onChanged: (value) {
                        if (value.isNotEmpty)
                          _autoCompleteSearch(
                              _googlePlace, _searchResults, value);
                        else if (_searchResults.value.length > 0)
                          _searchResults.value = [];
                      },
                    )),
                    Icon(
                      Icons.gps_fixed,
                      color: Colors.orange,
                    ),
                  ])),
          GPSIndicator(returnToPrevious: returnToPrevious ?? false),
          Expanded(
            child: _searchResults.value.length > 0
                ? _buildLocationSearchList(_searchResults.value, _googlePlace)
                : _user != null
                    ? _buildSavedAddressList(_isDeleting.value)
                    : _unAuthenticatedLocationMessage(),
          )
        ],
      ),
    );
  }

  Widget _unAuthenticatedLocationMessage() {
    return Center(
      child: Text('Search for your location.'),
    );
  }

  Widget _buildSavedAddressList(bool isDeleting) {
    return BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
      return state.when(
          loading: () {
            context.read<AddressBloc>().add(AddressEvent.fetchSavedAddress());
            return LoadingView();
          },
          loaded: (dataRaw) {
            if (dataRaw.isNotEmpty) {
              List<AddressModel> data;
              if (franchiseId != null) {
                data = dataRaw
                    .where((address) => address.franchiseId == franchiseId)
                    .toList();
              } else
                data = dataRaw;
              return RefreshIndicator(
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    children: [
                      Wrap(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              color: Theme.of(context).primaryColor,
                              child: Text("Saved Address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)))
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: Config.isMultiLocation
                              ? () => context.read<AddressBloc>().add(
                                  AddressEvent.selectAddress(
                                      data[index], returnToPrevious ?? false))
                              : null,
                          leading: Icon(
                              data[index].nickName == 'Work'
                                  ? Icons.work
                                  : data[index].nickName == 'Home'
                                      ? Icons.home
                                      : Icons.location_on_rounded,
                              color: Theme.of(context).primaryColor),
                          title: Text(data[index].nickName,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(
                            '${data[index].house}, ${data[index].locality}',
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: isDeleting
                              ? IconButton(
                                  onPressed: () => context
                                      .read<AddressBloc>()
                                      .add(AddressEvent.deleteAddress(
                                          data[index])),
                                  icon: Icon(
                                    Icons.delete,
                                    color: Theme.of(context).errorColor,
                                  ))
                              : null,
                        ),
                      )
                    ],
                  ),
                  onRefresh: () async {
                    context.read<AddressBloc>().add(AddressEvent.emitLoad());
                    return null;
                  });
            }
            return EmptyView(
                icon: Icons.location_off_rounded, title: 'No Address');
          },
          failed: (error) => FailedView(
              exceptions: error,
              onRetry: () {
                context
                    .read<AddressBloc>()
                    .add(AddressEvent.fetchSavedAddress());
              }));
    });
  }

  Widget _buildLocationSearchList(
      List<AutocompletePrediction> searchResults, GooglePlace googlePlace) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.location_pin),
              title: Text(searchResults[index].description ?? ''),
              onTap: () {
                if (searchResults[index].placeId != null) {
                  googlePlace.details
                      .get(searchResults[index].placeId!)
                      .then((place) {
                    if (place != null &&
                        place.result != null &&
                        place.result!.geometry != null &&
                        place.result!.geometry!.location != null)
                      Navigator.pushNamed(context, '/addressMap', arguments: {
                        'latitude': place.result!.geometry!.location!.lat!,
                        'longitude': place.result!.geometry!.location!.lng!,
                        'returnToPrevious': returnToPrevious
                      });
                  });
                }
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: searchResults.length);
  }
}
