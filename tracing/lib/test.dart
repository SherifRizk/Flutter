import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;
  LocationData? position ;
  LocationData? latitude;
  LocationData? longitude;
  Future<dynamic> getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    return _locationData;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const Text(
            'Hey',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          MaterialButton(
            color: Colors.amber,
            onPressed: (){
              setState(() {
                getLocation().then((value){
                  print(value);
                  // latitude = _locationData.latitude as String ;
                  // longitude = _locationData.longitude as String;
                  // print(value.toString());
                  position = value;
                  print(position?.latitude);
                  print(position?.longitude);
                  // latitude = position?.latitude ;

                });
              });
              // position = getLocation();
              // print(position);
            },
            child: const Text(
              'Location',
              style:  TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
