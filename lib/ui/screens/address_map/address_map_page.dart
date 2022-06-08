import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/address_map/bloc/address_map_bloc.dart';
import 'package:woodle/ui/widgets/loading.dart';

class AddressMapPage extends HookWidget {
  final double latitude;
  final double longitude;
  final bool? returnToPrevious;
  const AddressMapPage({
    Key? key,
    required this.latitude,
    required this.longitude,
    this.returnToPrevious,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locality = useState<String>('');
    final _pincode = useState<String>('');
    final _latitude = useState<double>(latitude);
    final _longitude = useState<double>(longitude);

    return Scaffold(
      appBar: AppBar(title: Text('Select your Location')),
      body: Column(
        children: [
          Expanded(
              child: MapSection(
                latitude: _latitude,
                longitude: _longitude,
                localityHook: _locality,
                pincodeHook: _pincode,
              )),
          AddressPanel(
            locality: _locality.value,
            pincode: _pincode.value,
            latitude: _latitude.value,
            longitude: _longitude.value,
            shouldReturn: returnToPrevious ?? false,
          ),
        ],
      ),
    );
  }
}

class MapSection extends HookWidget {
  final ValueNotifier<double> latitude;
  final ValueNotifier<double> longitude;
  final ValueNotifier<String> localityHook;
  final ValueNotifier<String> pincodeHook;

  MapSection({
    required this.latitude,
    required this.longitude,
    required this.localityHook,
    required this.pincodeHook,
  });

  void _onCameraIdle(double latitude, double longitude) {
    placemarkFromCoordinates(latitude, longitude).then((addresses) {
      String _name = "";
      String _locality = "";

      if (addresses.isNotEmpty) {
        if (addresses.first.thoroughfare != null &&
            !addresses.first.thoroughfare!.toLowerCase().startsWith("unnamed"))
          _name = addresses.first.thoroughfare!;

        if (addresses.first.name != null &&
            addresses.first.name!.length > 4 &&
            _name != addresses.first.name)
          _name = _name + addresses.first.name!;

        if (addresses.first.locality != null &&
            addresses.first.name != addresses.first.locality)
          _locality = addresses.first.locality!;

        if (addresses.first.postalCode != null)
          pincodeHook.value = addresses.first.postalCode!;

        localityHook.value = '$_name, $_locality';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _userPosition =
    //     useState<LatLng>(LatLng(latitude.value, longitude.value));
    // GoogleMapController _mapController;

    CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(latitude.value, longitude.value),
    );

    return Stack(children: [
      GoogleMap(
        zoomControlsEnabled: false,
        minMaxZoomPreference: MinMaxZoomPreference(15, 30),
        myLocationButtonEnabled: true,
        // onCameraIdle: () => _onCameraIdle(latitude.value, longitude.value),
        // onCameraIdle: () => _onCameraIdle(
        //     _userPosition.value.latitude, _userPosition.value.longitude),
        onCameraMove: (position) {
          latitude.value = position.target.latitude;
          longitude.value = position.target.longitude;
        },
        // onCameraMove: (position) => _userPosition.value = position.target,
        // onMapCreated: (controller) => _mapController = controller,
        initialCameraPosition: _cameraPosition,
      ),
      Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.location_on,
          color: Colors.blue,
          size: 36,
        ),
      )
    ]);
  }
}

class AddressPanel extends HookWidget {
  final _houseKey = GlobalKey<FormFieldState>();
  final String locality;
  final String pincode;
  final double latitude;
  final double longitude;
  final bool shouldReturn;

  AddressPanel({
    required this.locality,
    required this.pincode,
    required this.latitude,
    required this.longitude,
    required this.shouldReturn,
  });

  void _processAddress(BuildContext context, double latitude, double longitude,
      bool isToSave, String addressType) {
    placemarkFromCoordinates(latitude, longitude).then((addresses) {
      String _name = "";
      String _locality = "";
      String _pincode = "";

      if (addresses.isNotEmpty) {
        if (addresses.first.thoroughfare != null &&
            !addresses.first.thoroughfare!.toLowerCase().startsWith("unnamed"))
          _name = addresses.first.thoroughfare!;

        if (addresses.first.name != null &&
            addresses.first.name!.length > 4 &&
            _name != addresses.first.name)
          _name = _name + addresses.first.name!;

        if (addresses.first.locality != null &&
            addresses.first.name != addresses.first.locality)
          _locality = addresses.first.locality!;

        if (addresses.first.postalCode != null)
          _pincode = addresses.first.postalCode!;

        _locality = '$_name, $_locality';
      }

      if (isToSave)
        saveAddress(context, addressType, _locality, _pincode);
      else
        useAddress(context, addressType, _locality, _pincode);
    });
  }

  void saveAddress(BuildContext context, String addressType,
      String localityValue, String pincodeValue) {
    return context.read<AddressMapBloc>().add(AddressMapEvent.saveAddress(
      locality: localityValue,
      house: _houseKey.currentState!.value,
      nickName: addressType,
      pincode: pincodeValue,
      lat: latitude,
      lng: longitude,
    ));
  }

  void useAddress(BuildContext context, String addressType,
      String localityValue, String pincodeValue) {
    print(localityValue);
    return context.read<AddressMapBloc>().add(AddressMapEvent.useAddress(
      locality: localityValue,
      house: _houseKey.currentState != null
          ? _houseKey.currentState!.value
          : '',
      nickName: addressType,
      pincode: pincodeValue,
      lat: latitude,
      lng: longitude,
      shouldReturn: shouldReturn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final _user = context.read<AuthenticationCubit>().state.user;
    final _addressType = useState(AddressDetails.addressTypes[0]);
    return BlocBuilder<AddressMapBloc, AddressMapState>(
        builder: (context, state) => state.when(
            loading: () => Container(
              height: 200,
              child: LoadingView(),
            ),
            loaded: () => Container(
              height: 200,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ListTile(
                  //   dense: true,
                  //   leading: Icon(Icons.location_on),
                  //   title: Text(locality),
                  //   subtitle: Text(pincode),
                  // ),
                  // SizedBox(height: 10),
                  _user != null
                      ? Column(
                    children: [
                      AddressDetails(
                          houseKey: _houseKey,
                          addressType: _addressType.value,
                          onAddressTypeChange: (value) =>
                          _addressType.value = value),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_houseKey.currentState!
                                        .validate())
                                      _processAddress(
                                          context,
                                          latitude,
                                          longitude,
                                          true,
                                          _addressType.value);
                                    // context
                                    //     .read<AddressMapBloc>()
                                    //     .add(AddressMapEvent
                                    //         .saveAddress(
                                    //       locality: locality,
                                    //       house: _houseKey
                                    //           .currentState!.value,
                                    //       nickName:
                                    //           _addressType.value,
                                    //       pincode: pincode,
                                    //       lat: latitude,
                                    //       lng: longitude,
                                    //     ));
                                  },
                                  child: Text('Save'))),
                          SizedBox(width: 10),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () => _processAddress(
                                      context,
                                      latitude,
                                      longitude,
                                      false,
                                      _addressType.value),
                                  // context
                                  //     .read<AddressMapBloc>()
                                  //     .add(AddressMapEvent.useAddress(
                                  //         locality: locality,
                                  //         house: _houseKey
                                  //                     .currentState !=
                                  //                 null
                                  //             ? _houseKey
                                  //                 .currentState!.value
                                  //             : '',
                                  //         nickName:
                                  //             _addressType.value,
                                  //         pincode: pincode,
                                  //         lat: latitude,
                                  //         lng: longitude,
                                  //         shouldReturn:
                                  //             shouldReturn)),
                                  child: Text('Use Now')))
                        ],
                      )
                    ],
                  )
                      : ElevatedButton(
                      onPressed: () => _processAddress(
                          context,
                          latitude,
                          longitude,
                          false,
                          _addressType.value),
                      // context
                      //     .read<AddressMapBloc>()
                      //     .add(AddressMapEvent.useAddress(
                      //         locality: locality,
                      //         house: _houseKey.currentState != null
                      //             ? _houseKey.currentState!.value
                      //             : '',
                      //         nickName: _addressType.value,
                      //         pincode: pincode,
                      //         lat: latitude,
                      //         lng: longitude,
                      //         shouldReturn: shouldReturn)),
                      child: Text('Use Now'))
                ],
              ),
            )));
  }
}

class AddressDetails extends StatelessWidget {
  final GlobalKey<FormFieldState> houseKey;
  final String addressType;
  final Function(String) onAddressTypeChange;

  AddressDetails(
      {required this.houseKey,
        required this.addressType,
        required this.onAddressTypeChange});

  static List<String> addressTypes = ["Home", "Work", "Other"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 8.0,
          children: List<Widget>.generate(
            addressTypes.length,
                (int index) {
              String _value = addressTypes[index];
              return ChoiceChip(
                pressElevation: 0.0,
                selectedColor: Colors.blue,
                backgroundColor: Colors.grey[400],
                label: Text(_value),
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                labelPadding: EdgeInsets.symmetric(horizontal: 15),
                selected: _value == addressType,
                onSelected: (_) => onAddressTypeChange(_value),
              );
            },
          ).toList(),
        ),
        SizedBox(height: 10),
        TextFormField(
          style: TextStyle(color: Colors.black, fontFamily: Config.fontFamily),
          key: houseKey,
          validator: (value) {
            if (value!.isEmpty) return "Enter house name or number";
            return null;
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Building/Land Mark",
            labelStyle: TextStyle(fontSize: 14),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
          ),
        ),
      ],
    );
  }
}