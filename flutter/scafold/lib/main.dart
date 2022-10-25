import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.pink[50],
        ),
        body: Center(
          child: Text('coders never quit'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print('click');

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[400],
        ),

      ),
    );
  }
}
