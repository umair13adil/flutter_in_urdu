import 'package:flutter/material.dart';
import 'package:flutter_in_urdu/part7.dart';

class DetailPage extends StatelessWidget {
  final Home home;

  DetailPage({this.home});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(home.name),
        ),
        body: Column(
          children: <Widget>[
            Text("${home.price}"),
            RaisedButton(
              child: Text("Go Back"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ));
  }
}
