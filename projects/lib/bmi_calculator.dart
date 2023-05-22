import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi-result.dart';

class BMICalculator extends StatefulWidget {
   const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
   bool isMale = true;
   double height = 175;
   int weight = 53;
   int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                         isMale = true;
                       });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale? Colors.blueGrey : Colors.white10,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:   const [
                            Image(image: AssetImage('images/male.png'),
                                width: 90,
                                height: 90,
                              ),
                            SizedBox(height: 15),
                            Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !isMale ?  Colors.red[400] :Colors.white10,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:   const [
                            Image(image: AssetImage('images/female.png'),
                              width: 90,
                              height: 90,
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white30,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:  [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 3),
                          const Text(
                            'Cm',
                            style: TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: isMale ? Colors.blueGrey: Colors.red[400],
                        inactiveColor: Colors.white30,
                        thumbColor: isMale ? Colors.blueGrey: Colors.red[400],
                        value: height,
                        max: 240,
                        min: 70,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                        },

                      )
                    ],
                  )
              ),
            ),
          ),
          Expanded(
            child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Weight',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                '$weight',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed:() {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight--',
                                    backgroundColor: isMale ? Colors.blueGrey: Colors.red[400],
                                    child: const Icon(
                                      Icons.remove,
                                    ),

                                  ),
                                  const SizedBox(width: 20),
                                  FloatingActionButton(
                                    onPressed:() {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight++',
                                    backgroundColor: isMale ? Colors.blueGrey: Colors.red[400],
                                    child: const Icon(
                                      Icons.add,
                                    ),

                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Age',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                               Text(
                                '$age',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed:() {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age--',
                                    backgroundColor: isMale ? Colors.blueGrey: Colors.red[400],
                                    child: const Icon(
                                      Icons.remove,
                                    ),

                                  ),
                                  const SizedBox(width: 20),
                                  FloatingActionButton(
                                    onPressed:() {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age++',
                                    backgroundColor: isMale ? Colors.blueGrey: Colors.red[400],
                                    child: const Icon(
                                      Icons.add,
                                    ),

                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: isMale ? Colors.blueGrey: Colors.red[400],
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height/100,2);
                // result = result.round() as double;
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return BMIResult(
                        isMale: isMale ,
                        result: result ,
                        age: age,
                      );
                    })
                );
              },
              child: const Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            ),
        ],
      ),
    );
  }
}
