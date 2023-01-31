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
          title: const Text('ListView'),
        ),
        body: ListView(children: [
          Card(
            child: Image.network(
                "https://i.pinimg.com/originals/93/5f/03/935f03d4622cb39d3b30855f4d5a6d08.gif"),
          ),
          Card(
            child: Image.network(
                "https://i.pinimg.com/originals/93/5f/03/935f03d4622cb39d3b30855f4d5a6d08.gif"),
          ),
          Card(
            child: Image.network(
                "https://i.pinimg.com/originals/93/5f/03/935f03d4622cb39d3b30855f4d5a6d08.gif"),
          ),
          Card(
            child: Image.network(
                "https://i.pinimg.com/originals/93/5f/03/935f03d4622cb39d3b30855f4d5a6d08.gif"),
          )
        ]),
      ),
    );
  }
}
