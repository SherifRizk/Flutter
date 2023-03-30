import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
          ),
          title: const Text(
            "Sherif Rizk",
          ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                ),
                onPressed: () {
                  print("Notifications Pressed");
                }),
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  print("Search Pressed.");
                })
          ],
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body:Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      const Image(
                        image: AssetImage('images/happy-birthday.jpg'
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.green[600]?.withOpacity(0.2),
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                        ),
                        child: const Text(
                            'Happy Birthday !!.',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                ('Happy Birthday !!'),
                style: TextStyle(
                    fontSize: 24.0
                ),
              ),
            ]
        ),

    );
  }
}
