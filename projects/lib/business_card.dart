import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/profile-pic.png'
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Sherif Rizk',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AbrilFatface'
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Data Analyst',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 200,
                color: Colors.white24,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(5),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.purple
                    ),
                    hintText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(5),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    hintText: 'Phone',
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
