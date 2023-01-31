import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GestureDetector"),
        ),
        body: Center(
          child: Column(
            children: [
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          ),
        ));
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onTap,
        onLongPress: _onLongPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.folder),
              SizedBox(
                width: 20,
              ),
              Text("Mis videos"),
            ],
          ),
        ));
  }

  void _onTap() {
    print("hola");
  }

  void _onLongPress() {
    print("Se ha mantenido el click");
  }
}
