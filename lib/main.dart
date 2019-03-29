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

class CardLanzamiento extends StatelessWidget {
  double paddingSize = 10.0;
  String pathImage = "";

  CardLanzamiento(this.pathImage);

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 130.0),
        child: Stack(
          children: <Widget>[
            Container(
            height: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(pathImage),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75)
                  )
                ]
              )
            )
          ],
        )
    );
  }
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
              CardLanzamiento("assets/images/supermariomaker2.jpg"),
            ],
          )
      );
  }
}