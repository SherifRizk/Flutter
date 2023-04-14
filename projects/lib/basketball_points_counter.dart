import 'package:flutter/material.dart';

class BasketballPoints  extends StatefulWidget {

  BasketballPoints({super.key});

  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  var teamAPoints = 0 ;

  var teamBPoints = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text(
          'Basketball Points Counter',
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                   [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                     Text(
                        '$teamAPoints',
                        style: const TextStyle(
                          fontSize: 130,
                        ),
                    ),
                    ElevatedButton(
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point'
                        ),
                    ),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                      ),
                       onPressed: (){
                        setState(() {
                          teamAPoints += 2;
                        });
                       },
                       child: const Text(
                           'Add 2 points'
                       ),
                     ),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                      ),
                       onPressed: (){
                        setState(() {
                          teamAPoints +=3;
                        });
                       },
                       child: const Text(
                           'Add 3 points'
                       ),
                     ),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                height: 440,
                child: const VerticalDivider(
                  width: 1,
                ),
              ),
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(
                        fontSize: 130,
                      ),
                    ),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: const Text(
                          'Add 1 point'
                      ),
                    ),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: const Text(
                          'Add 2 points'
                      ),
                    ),
                    ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(130, 40)
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints +=3;
                        });
                      },
                      child: const Text(
                          'Add 3 points'
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style:  ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.black,
                minimumSize: const Size(130, 40)
            ),
            onPressed: (){
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            child: const Text(
                'Rest'
            ),
          )
        ],
      ),
    );
  }
}
