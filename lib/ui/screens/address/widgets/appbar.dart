import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';
import 'package:woodle/ui/screens/address/widgets/gps_indicator.dart';

class AddressAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController locationSearchController;
  final FocusNode focusNode;
  final bool isSearching;
  final ValueNotifier<List<AutocompletePrediction>> predictions;
  final GooglePlace googlePlace;
  final void Function()? onCancel;

  AddressAppBar(
      {required this.locationSearchController,
      required this.focusNode,
      required this.isSearching,
      required this.onCancel,
      required this.googlePlace,
      required this.predictions});

  @override
  Size get preferredSize => isSearching
      ? Size.fromHeight(kToolbarHeight + 55)
      : Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return isSearching
        ? _searchLocationAppBar(context, focusNode)
        : AppBar(
            title: Text('Address'),
          );
  }

  Widget _searchLocationAppBar(BuildContext context, FocusNode focusNode) {
    return AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('Set Delivery Location'.toUpperCase(),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).canvasColor)),
            TextField(
              cursorColor: Theme.of(context).canvasColor,
              style: TextStyle(
                  color: Theme.of(context).canvasColor.withOpacity(0.7)),
              controller: locationSearchController,
              focusNode: focusNode,
              decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: "Search for locations",
                  hintStyle: TextStyle(
                      color: Theme.of(context).canvasColor.withOpacity(0.5)),
                  suffixIcon: IconButton(
                    color: Theme.of(context).canvasColor,
                    icon: Icon(Icons.clear),
                    onPressed: onCancel,
                  )),
              onChanged: (value) {
                if (value.isNotEmpty)
                  _autoCompleteSearch(value);
                else if (predictions.value.length > 0) predictions.value = [];
              },
            )
          ],
        ),
        bottom: PreferredSize(
          child: GPSIndicator(),
          preferredSize: Size.fromHeight(55),
        ));
  }

  void _autoCompleteSearch(String value) {
    googlePlace.autocomplete.get(value).then((results) {
      if (results != null && results.predictions != null)
        predictions.value = results.predictions!;
    });
  }
}
