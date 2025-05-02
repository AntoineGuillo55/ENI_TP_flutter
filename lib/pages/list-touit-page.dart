import 'package:flutter/material.dart';
import 'package:tp/touit-list-view.dart';


import '../composants/footer.dart';
import '../composants/header.dart';

class ListTouitPage extends StatelessWidget {
  const ListTouitPage({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    String identifiant = (ModalRoute.of(context)!.settings.arguments as String?) ?? "";

    return Scaffold(
      appBar: AppBar(title: Text("Bienvenue $identifiant", style: TextStyle(color: Colors.white),)),
      body: Column(
        children: [
          Header(),
          Expanded(child: TouitListView()),
          Footer()
        ],
      ),
    );
  }
}