import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_place/google_place.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/address/bloc/address_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddressPage extends HookWidget {
  final bool? returnToPrevious;
  final int? franchiseId;
  const AddressPage({Key? key, this.returnToPrevious, this.franchiseId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    GooglePlace _googlePlace = GooglePlace(Config.kGoogleApiKey);
    final _isDeleting = useState(false);
    final _focusNode = useFocusNode();
    final _locationSearchController = useTextEditingController();
    final _isSearching = useState(false);
    final _searchResults = useState<List<AutocompletePrediction>>([]);
    final _user = context.read<AuthenticationCubit>().state.user;

    // useEffect(() {
    //   _isSearching.value = _locationSearchController.text.isNotEmpty;
    //   // _locationSearchController.addListener(() {
    //   //   _isSearching.value = _locationSearchController.text.isNotEmpty;
    //   // });
    // }, [_isSearching.value != _locationSearchController.text.isNotEmpty]);

    return Scaffold(
      appBar: AddressAppBar(
        returnToPrevious: returnToPrevious ?? false,
        focusNode: _focusNode,
        isSearching: _isSearching.value,
        locationSearchController: _locationSearchController,
        googlePlace: _googlePlace,
        predictions: _searchResults,
        onCancel: () {
          _focusNode.unfocus();
          _locationSearchController.clear();
          _isSearching.value = false;
        },
        onDelete: () => _isDeleting.value = !_isDeleting.value,
        isDeleting: _isDeleting.value,
      ),
      body: _isSearching.value
          ? _buildLocationSearchList(_searchResults.value, _googlePlace)
          : _user != null
              ? _buildSavedAddressList(_isDeleting.value)
              : _unAuthenticatedLocationMessage(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_isSearching.value) {
              _focusNode.unfocus();
              _locationSearchController.clear();
              _isSearching.value = false;
            } else {
              _isSearching.value = true;
              _focusNode.requestFocus();
            }
          },
          label: _isSearching.value
              ? Icon(Icons.close, color: Theme.of(context).canvasColor)
              : _user != null
                  ? Text(
                      'Add New',
                      style: TextStyle(color: Theme.of(context).canvasColor),
                    )
                  : Text(
                      'Search',
                      style: TextStyle(color: Theme.of(context).canvasColor),
                    )),
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
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Saved Addresses")),
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
                          leading: Icon(data[index].nickName == 'Work'
                              ? Icons.work
                              : data[index].nickName == 'Home'
                                  ? Icons.home
                                  : Icons.location_on_rounded),
                          title: Text(data[index].nickName),
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
                ),
              );
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

  Widget _unAuthenticatedLocationMessage() {
    return Center(
      child: Text('Search for your location.'),
    );
  }

  Widget _buildLocationSearchList(
      List<AutocompletePrediction> searchResults, GooglePlace googlePlace) {
    return ListView.separated(
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
