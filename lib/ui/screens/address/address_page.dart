import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_place/google_place.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/address/bloc/address_bloc.dart';
import 'package:woodle/ui/screens/address_map/address_map_page.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddressPage extends HookWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GooglePlace _googlePlace = GooglePlace(Config.kGoogleApiKey);
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
      ),
      body: _isSearching.value
          ? _buildLocationSearchList(_searchResults.value, _googlePlace)
          : _user != null
              ? _buildSavedAddressList()
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

  Widget _buildSavedAddressList() {
    return BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
      return state.when(loading: () {
        context.read<AddressBloc>().add(AddressEvent.fetchSavedAddress());
        return LoadingView();
      }, loaded: (data) {
        if (data.isNotEmpty)
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
                          ))
                ],
              ),
            ),
          );
        return EmptyView(icon: Icons.location_off_rounded, title: 'No Address');
      });
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
                        'longitude': place.result!.geometry!.location!.lng!
                      });
                  });
                }
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: searchResults.length);
  }
}
