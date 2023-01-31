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
          title: Text("DifferentButtons"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: _onPressedBtn1,
                  child: Text("ElevatedButton")),
              TextButton(onPressed: _onPressedBtn2, child: Text("TextButton")),
              IconButton(onPressed: _onPressedBtn3, icon: Icon(Icons.delete)),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: BorderSide(
                        color: Colors.red,
                      ),
                      backgroundColor: Colors.amber),
                  onPressed: _onPressedBtn4,
                  child: Text(
                    'Start Over',
                    style: TextStyle(fontSize: 40),
                  )),
            ],
          ),
        ));
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );

  void _onPressedBtn1() {}

  void _onPressedBtn2() {}

  void _onPressedBtn3() {}

  void _onPressedBtn4() {}
}
