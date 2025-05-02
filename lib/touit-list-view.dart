import 'package:flutter/material.dart';
import 'package:tp/composants/content-body.dart';
import 'package:tp/models/touit.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TouitListView extends StatefulWidget {
  const TouitListView({super.key});

  @override
  State<TouitListView> createState() => _TouitListViewState();
}

class _TouitListViewState extends State<TouitListView> {

  List<Touit> touits = [];

  void getTouits() async {
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json"));
    if (response.statusCode == 200) {
      var json = convert.jsonDecode(response.body);
      setState(() {
        touits = List<Touit>.from(json.map((data) => Touit.fromJson(data)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: getTouits, child: Icon(Icons.refresh)),
        if(touits.isNotEmpty)
            Expanded(
              child: ListView.builder(
              itemCount: touits.length,
              itemBuilder: (context, index) {
                return ContentBody(touit : touits[index]);
              }),
            ),
      ],
    );
  }
}
