import 'package:flutter/material.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  late LocationData currentLocation;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    setState(() {
      currentLocation = locationData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Mobile Project',
            style: TextStyle(
              // color: Colors.blue,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
  // Center(
  // child: currentLocation == null
  // ? CircularProgressIndicator()
  //     : Text(
  // 'Latitude: ${currentLocation.latitude}\nLongitude: ${currentLocation.longitude}',
  // ),
  // ),
}
