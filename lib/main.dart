import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_studyjam/widgets/text.dart';
import 'package:flutter_studyjam/widgets/card.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: VideoG(),
      ),
    ),
  );
}
class VideoG extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dia = DateFormat("EEEEE").format(now);
    String mes = DateFormat("LLLL y").format(now);
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
            ListView(
            children: <Widget>[
            WidgetText('$dia, $mes', Color(0xffF58299), 16, 210.0, 5.0),
            WidgetText("News", Color(0xff29b6f6), 30.0, 125.0, 5.0),
            WidgetText("Releases", Color(0xffEDEFA9), 26.0, 0.0, 5.0),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  WidgetCard("assets/images/smm2.png","Super Mario Maker 2","June 2019"),
                  WidgetCard("assets/images/crash.png","Crash Team Racing Nitro Fueled","June 2019"),
                  WidgetCard("assets/images/doom.png","Doom Eternal","December 2019"),
                ],
              ),
            ),
            WidgetText("Updates", Color(0xffEDEFA9), 26.0, 0.0, 10.0),
            WidgetCard("assets/images/wow.png","World of Warcraft","Update 8.1.5"),
            WidgetCard("assets/images/bf1.png","Battlefield 1","News maps"),
            WidgetCard("assets/images/lol.png","League of Legends","New Champion!"),
            WidgetCard("assets/images/sc2.png","Starcraft 2","Tournament soon.."),
            ],
          ),
        ],
      ),
    );
  }
}