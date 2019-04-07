import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_studyjam/widgets/text.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: VideoG(),
      ),
    ),
  );
}
class CardGames extends StatelessWidget {
  String vImg = "";
  String vtitle = "";
  String vDesc = "";
  CardGames(this.vImg, this.vtitle, this.vDesc);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        child: Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 60.0, right: 60.0, top: 10.0, bottom: 0.0),
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vImg),
                          fit: BoxFit.cover
                      ),
                  )
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  WidgetText(this.vtitle, Colors.black87, 17, 20.0, 100.0),
                  WidgetText(this.vDesc, Colors.black45, 15, 20.0, 120.0),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: new Border.all(color: Colors.black),
          color: Color(0xffe0e0e0),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75)
            )
          ]
         )
    );
  }
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
            WidgetText('$dia, $mes', Color(0xffb3e5fc), 16, 210.0, 5.0),
            WidgetText("News", Color(0xff29b6f6), 30.0, 125.0, 5.0),
            WidgetText("Releases", Color(0xffb3e5fc), 26.0, 0.0, 5.0),
            CardGames("assets/images/smm2.png","Super Mario Maker 2","June 2019"),
            WidgetText("Updates", Color(0xffb3e5fc), 26.0, 0.0, 10.0),
            CardGames("assets/images/wow.png","World of Warcraft","Update 8.1.5"),
            CardGames("assets/images/bf1.png","Battlefield 1","News maps"),
            CardGames("assets/images/lol.png","League of Legends","New Champion!"),
            CardGames("assets/images/sc2.png","Starcraft 2","Tournament soon.."),
            ],
          ),
        ],
      ),
    );
  }
}