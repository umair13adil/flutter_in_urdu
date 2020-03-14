import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter In Urdu',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter in Urdu'),
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
  var myList1 = ["1", "2", "3", "4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildRow(),
          _buildColumn(),
          _buildRow(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildRow(){
    return  Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[0],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.purple,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[1],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[2],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.greenAccent,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[3],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        )
      ],
    );
  }

  Widget _buildColumn(){
    return  Column(
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[0],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.purple,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[1],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[2],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        ),
        Container(
          color: Colors.greenAccent,
          height: 100.0,
          width: 100.0,
          child: Center(
              child: Text(
                myList1[3],
                style: TextStyle(fontSize: 34.0, color: Colors.white),
              )),
        )
      ],
    );
  }
}
