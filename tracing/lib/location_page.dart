import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:tracing/test.dart';

import 'location_page.dart';
class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);
  @override
  State<LocationPage> createState() => _LocationState();
}

Location location = Location();
late bool _serviceEnabled;
late PermissionStatus _permissionGranted;
late LocationData _locationData;
late LocationData latitude ;
late LocationData longitude ;LocationData? position;
Future<dynamic> getLocation() async {
  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) _serviceEnabled = await location.requestService();
  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied){
    _permissionGranted = await location.requestPermission();
  }
  _locationData = await location.getLocation();
  return _locationData;
}

// List<LatLng> _route = [];
//
// _route.add(LatLng(_locationData.latitude, _locationData.longitude));


class _LocationState extends State<LocationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Location'
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Latitude : ${position?.latitude}',
              style:  const TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0,),
            Text(
              'Longitude : ${position?.longitude}',
              style:  const TextStyle(
                color: Colors.blue,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0,),
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
            const SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const Test();
                }));
              },
              child:  Container(
                height: 40,
                width: 70,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text(
                    'Location'
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}

