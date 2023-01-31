import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> names = [
    "Adrian",
    "Pedro",
    "Jordan",
    "Lulu",
    "Adrian",
    "Pedro",
    "Jordan",
    "Lulu",
    "Adrian",
    "Pedro",
    "Jordan",
    "Lulu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
              leading: Icon(Icons.person),
              onTap: () {
                print(name);
              },
            );
          }),
    );
  }
}
