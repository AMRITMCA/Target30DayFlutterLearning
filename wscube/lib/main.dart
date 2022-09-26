import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("costum widget"),
        ),
        body: Container(
          child: Column(children: [
            catItems1(),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                      title: Text('Name'),
                      subtitle: Text('Mob No'),
                      trailing: Icon(Icons.delete),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueGrey,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromARGB(255, 29, 30, 30),
                      ),
                    ),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 86, 76, 175),
              ),
            ),
          ]),
        ));
  }
}

class catItems1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 18,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
