import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Application'),
          backgroundColor: Colors.teal[700],
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://thumbs.dreamstime.com/b/colorful-happy-birthday-cupcakes-candles-spelling-148323072.jpg'
            ),
          ),
        ),
      ),
    );
  }
}