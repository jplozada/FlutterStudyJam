import 'package:flutter/material.dart';
import 'package:flutter_studyjam/data/releases.dart';
import 'package:flutter_studyjam/widgets/text.dart';
import 'package:flutter_studyjam/data/updates.dart';

Widget WidgetCard() {

  return Container(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: releasesList.releases.length,
      itemBuilder: (BuildContext context, int i) {
        return NewsList(
          name: releasesList.releases[i].name,
          image: releasesList.releases[i].image,
          desc: releasesList.releases[i].desc,
          releasesObject: releasesList.releases[i],
        );
      },
    ),
  );
}


Widget WidgetCard1() {

  return Container(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: updatesList.updates.length,
      itemBuilder: (BuildContext context, int i) {
        return NewsList(
          name: updatesList.updates[i].name,
          image: updatesList.updates[i].image,
          desc: updatesList.updates[i].desc,
          updatesObject: updatesList.updates[i],
        );
      },
    ),
  );
}


class NewsList extends StatelessWidget {
  const NewsList(
      { @required this.name,
        @required this.image,
        @required this.desc,
        this.releasesObject,
        this.updatesObject});

  final String name;
  final String image;
  final String desc;
  final Release releasesObject;
  final Update updatesObject;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            height: 450.0,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(Icons.arrow_forward_ios, size: 30.0, color: Colors.black54,),
                      StatefulFavIcon(
                        foreground: Colors.black54,
                      )
                    ]
                ),
                SizedBox(
                  height: 150,
                  child: Image.asset(image),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  child: WidgetText(name, Colors.black, 25.0, 0.0, 0.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: WidgetText(desc, Colors.black54, 15.0, 0.0, 0.0)
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



class StatefulFavIcon extends StatefulWidget {
  const StatefulFavIcon({@required this.foreground});

  final Color foreground;

  @override
  _StatefulFavIconState createState() => _StatefulFavIconState();
}

class _StatefulFavIconState extends State<StatefulFavIcon> {
  bool isFav;

  @override
  void initState() {
    super.initState();
    isFav = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Icon(
        isFav ? Icons.bookmark : Icons.bookmark_border,
        color: widget.foreground,
        size: 30.0,
      ),
    );
  }
}
