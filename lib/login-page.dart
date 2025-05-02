import 'package:flutter/material.dart';

import 'connection-form.dart';
import 'footer.dart';
import 'header.dart';

class LoginPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login", style: TextStyle(color: Colors.white),)),
      body: ConnectionForm()
    );
  }
}