import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var count = 0;
  var jokes = [
    'Learn programming to understand programming jokes.',
    'Code never lies,comments sometimes do.',
    'You are semicolons to my Statements',
    'Programming is 1% writing code and 99% understanding why its not working',
    'I told him I cound not open jar. He told me to download java',
    'Comparing java and javascript is same as comparing car and carpet',
    'Golden rule of programming - If it works dont touch it.'
  ];
  void increamentCount() {
    setState(() {
      if (count == jokes.length - 1) {
        count = 0;
      }
      else{
count = count + 1;
      }
      
    });
  }

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
          child: Text(
            //'Count: $count',
            '${jokes[count]}',
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: Colors.pink[800],
                fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increamentCount,
          child: Icon(
            Icons.refresh,
            size: 30,
          ),
          backgroundColor: Colors.pink[400],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
