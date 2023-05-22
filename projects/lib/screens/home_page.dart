import 'package:flutter/material.dart';
import 'package:projects/screens/project_page.dart';
import 'package:projects/screens/yousef_page.dart';

import '../bmi_calculator.dart';
import 'family_members_page.dart';
import 'mobile_porect_page.dart';

class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Language Learning App',
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 22.0),
            child: Text(
              'Your way to learn japanese',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.orange,
              width: double.infinity,
              child: const Text(
                'Numbers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  const FamilyMembersPage();
              }));
            },
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.green,
              width: double.infinity,
              child: const Text(
                'Family Members',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.purple,
              width: double.infinity,
              child: const Text(
                'Colors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  const MapScreen();
              }));
            },
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.blue,
              width: double.infinity,
              child: const Text(
                'Mobile Project',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return   const BMICalculator();
              }));
            },
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.teal,
              width: double.infinity,
              child: const Text(
                'BMI Calculator',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return   const Project();
              }));
            },
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              alignment: Alignment.centerLeft,
              height: 70,
              color: Colors.pink,
              width: double.infinity,
              child: const Text(
                'مشروع علي',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context){
          //       return  const Speed();
          //     }));
          //   },
          //   child: Container(
          //     padding: const EdgeInsetsDirectional.only(start: 20),
          //     alignment: Alignment.centerLeft,
          //     height: 70,
          //     color: Colors.deepPurple,
          //     width: double.infinity,
          //     child: const Text(
          //       'مشروع يوسف',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 24.0,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
