import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso basico del navegador'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar segunda pantalla'),
          onPressed: () {
            _showSecondPage(context);
          },
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(name: "Adrian", lastName: "Araya"));
  }
}
