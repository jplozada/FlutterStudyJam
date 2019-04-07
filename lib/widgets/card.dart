import 'package:flutter/material.dart';
import 'package:flutter_studyjam/widgets/text.dart';
class WidgetCard extends StatelessWidget {
  String vImg;
  String vtitle;
  String vDesc;
  WidgetCard(this.vImg, this.vtitle, this.vDesc);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        child: Stack(
          children: <Widget>[
            Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 60.0, right: 60.0, top: 10.0, bottom: 0.0),
                        height: 80.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(vImg),
                              fit: BoxFit.contain
                          ),
                        )
                    ),
                  ],
                )
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  WidgetText(this.vtitle, Colors.black87, 17, 20.0, 95.0),
                  WidgetText(this.vDesc, Colors.black45, 15, 20.0, 115.0),
                ],
              ),
            ),
            Positioned(
                bottom: 10.0,
                right: 10.0,
                child:Icon(
                    Icons.arrow_right
                )
            ),
            Positioned(
                top: 10.0,
                right: 10.0,
                child:Icon(
                    Icons.bookmark
                )
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xffe0e0e0),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white54,
                blurRadius: 15.0,
              )
            ]
        )
    );
  }
}