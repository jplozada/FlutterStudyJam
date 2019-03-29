import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dia = DateFormat("EEEEE").format(now);
    String mes = DateFormat("LLLL y").format(now);
    return Container(margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0.0,
                child: Text(
                  '$dia, $mes',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Positioned(
                top: 30.0,
                child: Text(
                  "Novedades",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Positioned(
                top: 80.0,
                child: Text(
                  "Lanzamientos",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          )
      );
  }
}