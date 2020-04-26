import 'package:flutter/material.dart';
import 'package:flutter_in_urdu/part7.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final Home home;

  DetailPage({this.home});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          child: SafeArea(
            bottom: false,
            top: false,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(home.image), fit: BoxFit.cover)),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            height: 100.0,
            width: width,
            padding: EdgeInsets.all(5.0),
            child: Card(
              color: Colors.black.withOpacity(0.65),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      home.name,
                      style: GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Price: ${home.price.toString()}",
                      style: GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        )
      ],
    ));
  }
}
