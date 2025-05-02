import 'package:flutter/material.dart';

import '../composants/connection-form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login", style: TextStyle(color: Colors.white),)),
      body: ConnectionForm()
    );
  }
}