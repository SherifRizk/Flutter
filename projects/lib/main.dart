import 'package:flutter/material.dart';
import 'package:projects/screens/Home_page.dart';
import 'basketball_points_counter.dart';
import 'business_card.dart';
import 'home_screen.dart';
import 'messenger_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(
      ),
    );
  }
}