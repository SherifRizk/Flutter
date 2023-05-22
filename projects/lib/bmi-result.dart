import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  // const BMIResult({Key? key}) : super(key: key);
  final bool isMale ;
  final double result;
  final int age;
  const BMIResult({super.key, required this.isMale, required this.result, required this.age,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bmi Result'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'Result: ${result.round()}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
