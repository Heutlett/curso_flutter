import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameTextController.dispose();
    lastNameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uso basico del navegador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Nombre:"),
                  controller: nameTextController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Apellido:"),
                  controller: lastNameTextController,
                ),
                ElevatedButton(
                  child: const Text('Mostrar segunda pantalla'),
                  onPressed: () {
                    _showSecondPage(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: nameTextController.text,
            lastName: lastNameTextController.text));
  }
}
