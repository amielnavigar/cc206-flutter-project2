import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Excercise 2.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://thumbs.dreamstime.com/b/mobile-application-typographic-header-concept-modern-technology-smartphone-interface-design-building-programming-vector-flat-184135133.jpg",
              height: 180,
              width: 180,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.all(90.0),
              child: Text(
                "Edited by: Amiel Navigar and Fritz Yev Gelito",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w900, fontStyle: FontStyle.italic, fontFamily: 'Calibri', fontSize: 17),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
