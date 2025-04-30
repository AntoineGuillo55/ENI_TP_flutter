import 'package:flutter/material.dart';

import 'buttons.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0, 25.0),
        color: Color(0xFF58B0F0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white)),
          TopButton(label: "Accueil"),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white))
        ]));
  }
}
