import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: new Text('first'),
          leading: Icon(Icons.access_alarm),
          actions: <Widget>[
            Icon(Icons.accessibility),
          ]),
      body: new Center(
        child: Text('first'),
      ),
    );
  }
}
