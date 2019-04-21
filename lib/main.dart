import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_studyjam/widgets/text.dart';
import 'package:flutter_studyjam/widgets/tabs.dart';

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
            WidgetText("News", Color(0xff29b6f6), 30.0, 135.0, 5.0),
            WidgetTabs(),
            ],
          ),
        ],
      ),
    );
  }
}