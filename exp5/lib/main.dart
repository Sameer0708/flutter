import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exp1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(child: Column(children: [Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Click Me!'),
                ),
                SizedBox(width: 20),

                Icon(
                  Icons.man,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Click Me!'),
                ),
                SizedBox(width: 20),

                Icon(
                  Icons.man,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
            ],
          ),
          ],),
        ),
      ),
    );
  }
}



