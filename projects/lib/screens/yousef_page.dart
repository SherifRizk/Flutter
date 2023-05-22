import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Speed extends StatefulWidget {
  const Speed({Key? key}) : super(key: key);

  @override
  State<Speed> createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
  double averageSpeed = 0.0;
  List<double> speeds = [];

  bool isMoving = false;
  late Position startPosition;
  late DateTime startTime;
  late Position currentPosition;

  @override
  void initState() {
    super.initState();
    Geolocator.getPositionStream().listen((position) {
      if (isMoving) {
        double distance = Geolocator.distanceBetween(
          startPosition.latitude,
          startPosition.longitude,
          position.latitude,
          position.longitude,
        );
        DateTime now = DateTime.now();
        double timeElapsed = now.difference(startTime).inSeconds.toDouble();
        double speed = distance / timeElapsed;
        setState(() {
          speeds.add(speed);
          currentPosition = position; // Set the current position
        });
      }
    });
  }

  void _startMoving() async {
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      isMoving = true;
      startPosition = position;
      startTime = DateTime.now();
      speeds = [];
      currentPosition = position;
    });
  }

  void _stopMoving() {
    setState(() {
      isMoving = false;
      startPosition;
      startTime ;
      speeds = [];
      currentPosition ;
      averageSpeed = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Average Speed'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isMoving
              ? Text(
            'Moving...',
            style: TextStyle(fontSize: 24),
          )
              : Text(
            'Average Speed: ${averageSpeed.toStringAsFixed(2)} m/s',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          currentPosition != null
              ? Text(
            'Current location: ${currentPosition.latitude.toStringAsFixed(6)}, ${currentPosition.longitude.toStringAsFixed(6)}',
            style: TextStyle(fontSize: 18),
          )
              : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isMoving) {
            _stopMoving();
          } else {
            _startMoving();
          }
        },
        child: isMoving ? Icon(Icons.stop) : Icon(Icons.directions_run),
      ),
    );
  }
}
