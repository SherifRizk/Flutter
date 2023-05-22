import 'package:flutter/material.dart';
import 'dart:async';
import 'package:proximity_sensor/proximity_sensor.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool objectNear = false;

  @override
  void initState() {
    super.initState();
    StartSensor();
  }

  void StartSensor() {
    ProximitySensor.events.listen((int sensorValue) {
      setState(() {
        objectNear = (sensorValue != 0) ? true : false;
      });
      print(sensorValue);
      print(objectNear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Proximity App'),
          centerTitle: true,
          backgroundColor: objectNear ? Colors.green : Colors.red,
        ),
        body: Center(
          child: CircleAvatar(
            backgroundColor: objectNear ? Colors.green : Colors.red,
            radius: 100,
          ),
        ),
      ),
    );
  }
}
