import 'package:google_place/google_place.dart';
import 'package:woodle/core/settings/config.dart';

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
          ? _buildLocationSearchList(_searchResults.value)
          : _buildSavedAddressList(),
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
              : Text(
                  'Add New',
                  style: TextStyle(color: Theme.of(context).canvasColor),
                )),
    );
  }

  Widget _buildSavedAddressList() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Saved Addresses")),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text(
                  'Kadambanad House, Opp. Ezhinjillam Lp Gov',
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLocationSearchList(List<AutocompletePrediction> searchResults) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.location_pin),
              title: Text(searchResults[index].description ?? ''),
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: searchResults.length);
  }
}
