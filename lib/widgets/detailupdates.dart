import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_studyjam/data/updates.dart';

class Details extends StatelessWidget {
  Details(this.updatesObject);

  final Update updatesObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                 ForegroundContent(updatesObject: updatesObject),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForegroundContent extends StatelessWidget {
  const ForegroundContent({@required this.updatesObject});

  final Update updatesObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 100.0),
        child: Stack(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  BottomButtons(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 40, color: Color(0xff0d47a1)),
                  )
                ]
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  height: 200,
                  width: 300,
                  child: Image.asset(updatesObject.image),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Text (
                            updatesObject.name,
                            softWrap: true,
                            style: TextStyle(
                              color: Color(0xffef5350),
                              fontSize: 25,
                              fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.right
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Text (
                            updatesObject.desc,
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffbbdefb),
                            ),
                            textAlign: TextAlign.left
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Text (
                            updatesObject.info,
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffffebee),
                            ),
                            textAlign: TextAlign.left
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class BottomButtons extends StatefulWidget {
  @override
  _BottomButtonsState createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  bool isFav = false;
  bool isCart = false;

  @override
  void initState() {
    super.initState();
    isFav = false;
    isCart = false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
          child: Icon(
            isFav ? Icons.bookmark : Icons.bookmark_border,
            color: isFav ? Color(0xff0d47a1) : Color(0xff0d47a1),
          ),
          backgroundColor: Color(0xff42a5f5),
          elevation: 3,
        ),
      ],
    );
  }
}


