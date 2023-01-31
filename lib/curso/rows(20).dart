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
          title: const Text('Material App Bar'),
        ),
        body: Padding(
          // Wrap que agrega espacio entre sus hijos
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                          'Activar Sonido')), // Wrap con CTRL+SHIFT+R para ocupar todo el espacio de la fila
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                      child: Text(
                          'Habilitar uso de la camara')), // Wrap con CTRL+SHIFT+R para ocupar todo el espacio de la fila
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Horizontal
                crossAxisAlignment: CrossAxisAlignment.end, // Vertical
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 150,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
