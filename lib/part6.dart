import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Home {
  String name;
  String image;
  double price;

  Home(this.name, this.image, this.price);
}

class MyApp extends StatelessWidget {
  var title = 'Lists in Flutter';

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
  List<Home> list = [
    Home("Blue Sofa", "image1.jpg", 25000.0),
    Home("Grey Sofa", "image2.jpg", 65000.0),
    Home("Green Sofa", "image3.jpg", 85000.0),
    Home("Green Sofa Single", "image4.jpeg", 45000.0),
    Home("Green Bed", "image5.jpg", 85000.0),
    Home("Green Sofa Double", "image6.jpg", 85000.0),
    Home("Red Double", "image7.jpg", 58000.0),
    Home("Red Sofa Set", "image8.jpg", 59500.0),
    Home("Grey Sofa Set", "image9.jpg", 159500.0),
    Home("Red Sofa Set", "image10.png", 259500.0),
    Home("Grey Sofa Set", "image11.jpg", 259500.0),
    Home("Grey Sofa Set Large", "image12.jpg", 359500.0),
    Home("White Sofa Double", "image13.jpg", 95000.0),
    Home("Grey Sofa Set", "image14.jpeg", 65000.0),
    Home("White Sofa Set", "image15.jpg", 65000.0),
    Home("Red Sofa Set", "image16.jpg", 65000.0),
    Home("Orange Sofa Set", "image17.jpg", 65000.0),
    Home("Orange Bed", "image18.jpg", 85000.0),
    Home("Red Sofa Double", "image19.png", 85000.0),
    Home("Sofa Set", "image20.jpeg", 185000.0),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Promotions", style: TextStyle(fontSize: 20.0),),
            ),
            SizedBox(
                height: 300.0,
                child: _buildList(width, Axis.horizontal, false)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Store", style: TextStyle(fontSize: 20.0),),
            ),
            Expanded(child: _buildList(width, Axis.vertical, true)),
          ],
        ));
  }

  Widget _buildList(double width, Axis direction, bool isVertical) {
    return ListView.builder(
        itemCount: list.length,
        scrollDirection: direction,
        itemBuilder: (context, index) {
          Home home = list[index];
          return _buildStack(width, home, isVertical);
        });
  }

  Widget _buildStack(double width, Home home, bool isVertical) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: isVertical
          ? Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: _buildListItem(home, width),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            )
          : Card(
              child: _buildListItem(home, width),
              elevation: 8.0,
            ),
    );
  }

  Widget _buildListItem(Home home, double width) {
    return Stack(
      children: <Widget>[
        _buildImage(home.image, width),
        Positioned(
          child: Container(
            width: width,
            color: Colors.blue[300].withOpacity(0.4),
            child: Column(
              children: <Widget>[
                Text(home.name,
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text("Price: ${home.price} Rs")
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
