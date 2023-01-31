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
          title: const Text('Uso del column'),
        ),
        body: Container(
          // Se hace un Wrap con CTRL+SHIFT+R para que la columna ocupe todo el espacio del eje X
          width: double.infinity, // columna ocupe todo el espacio del eje X
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Alineamiento eje Y
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Alineamiento eje X
            children: [
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text("Hola"),
              Text("Hola"),
              Text("Hola"),
              Text("Hola"),
              Image.network(
                "https://i.pinimg.com/originals/93/5f/03/935f03d4622cb39d3b30855f4d5a6d08.gif",
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
