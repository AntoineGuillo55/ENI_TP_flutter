import 'package:flutter/material.dart';
import 'package:tp/footer.dart';
import 'package:tp/header.dart';

import 'buttons.dart';
import 'content-body.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.indigo)),
      title: "Demo layout",
      home: MyApp(title: "Touitter"),
    );
  }
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title, style: TextStyle(color: Colors.white),)),
      body: Column(
        children: [
          Header(),
          ContentBody(),
          Footer()
        ],
      ),
    );
  }
}


