import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: const Text('Mostrar un Snackbar'),
      ),
      body: Center(
          child: TextButton(
        onPressed: () => _showSnackbar(context),
        child: Text('Show SnackBar'),
      )),
    );
  }

  void _showSnackbar(BuildContext context) {
    final _snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.thumb_up),
          SizedBox(
            width: 10.0,
          ),
          Text('Deleted action successful')
        ],
      ),
      backgroundColor: Colors.deepOrange,
      action: SnackBarAction(
        label: "Cancelar",
        onPressed: () {
          print("Cancelado");
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }
}
