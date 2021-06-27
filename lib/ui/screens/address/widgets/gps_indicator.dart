import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';

class GPSIndicator extends HookWidget {
  const GPSIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _serviceIsEnabled = useState(false);
    useEffect(() {
      Geolocator.getServiceStatusStream().listen((ServiceStatus status) =>
          _serviceIsEnabled.value = status == ServiceStatus.enabled);
    }, []);

    if (_serviceIsEnabled.value) return _enabledLocationIndicator(context);
    return _disabledLocationIndicator(context);
  }

  Widget _disabledLocationIndicator(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.location_searching,
        color: Theme.of(context).canvasColor,
      ),
      title: Text(
        'Device Location is turned off',
        style: TextStyle(color: Theme.of(context).canvasColor),
      ),
      trailing: ElevatedButton(
        child: Text(
          'TURN ON',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).canvasColor)),
        onPressed: null,
      ),
      // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddressMapPage())),
    );
  }

  Widget _enabledLocationIndicator(BuildContext context) {
    return ListTile(
        leading: Icon(
          Icons.my_location_rounded,
          color: Theme.of(context).canvasColor,
        ),
        title: Text(
          'GPS enabled',
          style: TextStyle(color: Theme.of(context).canvasColor),
        ),
        trailing: ElevatedButton(
          child: Text(
            'USE CURRENT LOCATION',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).canvasColor)),
          onPressed: null,
        ));
  }
}
