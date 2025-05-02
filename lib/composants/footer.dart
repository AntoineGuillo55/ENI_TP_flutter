import 'package:flutter/material.dart';

import 'buttons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomButton(label: "Fil", isActive: true),
        BottomButton(label: "Notifications"),
        BottomButton(label: "Messages"),
        BottomButton(label: "Moi"),
      ],
    );
  }
}
