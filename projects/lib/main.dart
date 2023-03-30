import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Birthday Card'),
          backgroundColor: Colors.teal[700],
        ),
        body:  Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          const [
            Image(
              image: AssetImage('images/happy-birthday.jpg'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ('Happy Birthday !!'),
              style: TextStyle(
                fontSize: 24.0
              ),
            ),
          ]
        ),
      ),
    );
  }
}