import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var title = 'Stack';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: title),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Card(child: _buildStack(300.0), elevation: 8.0));
  }

  Widget _buildStack(double width) {
    return Stack(
      children: <Widget>[
        _buildImage("image1.jpg", width),
        Positioned(
          child: Container(
            width: width,
            color: Colors.blue[300].withOpacity(0.4),
            child: Column(
              children: <Widget>[
                Text("Blue Sofa",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text("Price: 20k Rs")
              ],
            ),
          ),
          bottom: 0,
        )
      ],
    );
  }

  Widget _buildImage(String path, double width) {
    return Image.asset(
      path,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
