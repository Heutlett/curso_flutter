import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: const Text('Uso del Drawer'),
      ),
      body: const Center(
        child: Text("hola"),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu),
        onPressed: () => _scaffKey.currentState!.openDrawer(),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const UserAccountsDrawerHeader(
          accountName: Text("adrian@gmail.com"),
          accountEmail: Text("Adrian Araya"),
          currentAccountPicture: FlutterLogo(),
          otherAccountsPictures: [FlutterLogo(), FlutterLogo(), FlutterLogo()],
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.deepOrange, Colors.black])),
        ),
        ListTile(
          title: const Text("Inicio"),
          leading: const Icon(Icons.home),
          onTap: () => showHome(context),
        ),
      ]),
    );
  }

  void showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
