import 'package:flutter/material.dart';
import 'package:tp/content-body.dart';


import 'footer.dart';
import 'header.dart';

class ListTouitPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    String identifiant = (ModalRoute.of(context)!.settings.arguments as String?) ?? "";

    return Scaffold(
      appBar: AppBar(title: Text("Bienvenue $identifiant", style: TextStyle(color: Colors.white),)),
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