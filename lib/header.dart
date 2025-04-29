import 'package:flutter/material.dart';

import 'buttons.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0, 25.0),
        color: Color(0xFF58B0F0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TopButton(label: "Nouveau"),
          TopButton(label: "Accueil"),
          TopButton(label: "Rechercher")
        ]));
  }
}
