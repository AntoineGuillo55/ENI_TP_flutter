import 'package:flutter/material.dart';
import 'package:tp/connection-form.dart';
import 'package:tp/footer.dart';
import 'package:tp/header.dart';
import 'package:tp/login-page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'content-body.dart';
import 'list-touit-page.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.indigo)),
      title: "Demo layout",
      initialRoute: "/login",
      routes: Routes.getRoutes(context),
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
      appBar: AppBar(title: Text(title, style: TextStyle(color: Colors.white),)),
      body: Column(
        children: [
          Header(),
          ConnectionForm(),
          ContentBody(),
          Footer()
        ],
      ),
    );
  }
}

class Routes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context){
    return {
      "/login": (context) => LoginPage(),
      "/home": (context) => ListTouitPage(),
    };
  }
}


