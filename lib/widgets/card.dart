import 'package:flutter/material.dart';
import 'package:flutter_studyjam/widgets/text.dart';

Widget WidgetCard() {

  return Container(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: ReleasesList(),
  );
}

class ReleasesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            height: 400.0,
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            width: 225,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                new BoxShadow(
                    color: Colors.white,
                    offset: new Offset(0.0, 0.0),
                    blurRadius: 8.0,
                    spreadRadius: 0.0
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Image.asset("assets/images/wow.png"),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  child: WidgetText("World of warcraft", Colors.black, 25.0, 0.0, 0.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: WidgetText("Nuevos campos de batalla !!", Colors.black54, 15.0, 0.0, 0.0)
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 40,
        )
      ],
    );
  }
}


