import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: new Text('Second'),
          leading: Icon(Icons.access_alarm),
          actions: <Widget>[
            Icon(Icons.accessibility),
          ]),
      body: new Center(
        child: Text('second'),
      ),
    );
  }
}
