import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastNameValue;

  late TextEditingController nameController;
  late TextEditingController lastNameController;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uso basico del navegador'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: "Nombre:"),
                    onSaved: (value) {
                      nameValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Llene este campo";
                      }
                    }),
                TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(labelText: "Apellido:"),
                    onSaved: (value) {
                      lastNameValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Llene este campo";
                      }
                    }),
                TextFormField(
                  decoration: InputDecoration(labelText: "Número de teléfono:"),
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Correo electrónico:"),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Edad:"),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Sitio web:"),
                  keyboardType: TextInputType.url,
                ),
                ElevatedButton(
                  child: const Text('Mostrar segunda pantalla'),
                  onPressed: () {
                    _showSecondPage(context);
                  },
                ),
              ],
            ),
          )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: "Dato precargado");
    lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }

    Navigator.of(context).pushNamed("/second",
        arguments:
            SecondPageArguments(name: nameValue, lastName: lastNameValue));
  }
}
