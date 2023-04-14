import 'package:flutter/material.dart';
import 'basketball_points_counter.dart';
import 'business_card.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballPoints(
      ),
    );
  }
}