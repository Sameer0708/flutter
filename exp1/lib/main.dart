import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Exp 1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Button pressed action
                  print('Button pressed!');
                },
                child: Text('Press me'),
              ),
              SizedBox(height: 20), // Spacer

              Icon(
                Icons.man,
                size: 50,
                color: Colors.red,
              ),
              SizedBox(height: 20), // Spacer

              // Image from Network
              Image.network(
                'https://mir-s3-cdn-cf.behance.net/project_modules/hd/82937756529961.59b2075873405.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20), // Spacer

              // Image from Asset
              Image.asset(
                'images/icon.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}