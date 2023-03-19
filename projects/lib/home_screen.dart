import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
        body: Container(
          width: double.infinity,
          color: Colors.cyanAccent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.purpleAccent,
                child: const Text(
                  "Sherif Rizk Ismail",
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Sherif Rizk Ismail",
                ),
              ),
              Container(
                color: Colors.cyanAccent,
                child: const Text(
                  "Sherif Rizk Ismail",
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text("Sherif Rizk Ismail",
                style: TextStyle(
                  color: Colors.white,
                )),
              ),
            ],
          ),
        )
    );
  }
}
