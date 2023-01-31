import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Margenes y paddings en container'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            margin: EdgeInsets.all(10), // Margen: (entre padre y container)
            padding:
                EdgeInsets.all(15), // Padding: (entre container y sus hijos)
            child: Text(
              "------",
              style: TextStyle(backgroundColor: Colors.black, fontSize: 60),
            ),
          ),
        ),
      ),
    );
  }
}
