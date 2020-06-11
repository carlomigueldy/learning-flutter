import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
      body: Container(
        padding: EdgeInsets.all(3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  tag: 'Cool tag',
                  child: Text('I am hero'),
                ),
                ExpandedCard(),
                ExpandedCard(),
              ],
            )
          ],
        ),
      )
    );
  }

}

class ExpandedCard extends StatelessWidget {
  const ExpandedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hello world');
      },
      onDoubleTap: () {
        print('Hello world !!!');
      },
      child: Card(
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(25),
          child: Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Title here')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Another title here')
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

