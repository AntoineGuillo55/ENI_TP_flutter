import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  final String label;

  const TopButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF58B0F0)),
      ),
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
    throw UnimplementedError();
  }
}

class BottomButton extends StatelessWidget {

  String label;
  bool isActive;

  BottomButton({super.key, required this.label, this.isActive = false});

  Color getColor() {
    return isActive ? Colors.blueAccent : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
      child: Text(label, style: TextStyle(color: getColor())),
    );
    throw UnimplementedError();
  }
}

class MiddleButton extends StatelessWidget {
  final String label;

  const MiddleButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
      child: Text(label, style: TextStyle(color: Colors.black26)),
    );
    throw UnimplementedError();
  }
}