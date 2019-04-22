import 'package:flutter/material.dart';
import 'package:flutter_studyjam/widgets/card.dart';

Widget WidgetTabs() {
  return Container(
    height: 530,
    width: double.infinity,
    child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          bottom: PreferredSize(
            //preferredSize: Size.fromHeight(20),
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(top: 15),
                      labelColor: Color(0xffEDEFA9),
                      indicatorColor: Color(0xffEDEFA9),
                      labelStyle: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                      ),
                      unselectedLabelColor: Color(0xffE5FFCC),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.blue
                      ),
                      tabs: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text("Releases"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text("Updates"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text("Where to buy"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
           Container(
             color: Colors.black,
             child: WidgetCard()
            ),
           Container(
               color: Colors.black,
               child: WidgetCard1()
           ),
           Container(
             child: Center(
               child: Text(
                 "Where to buy",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 15),
               ),
             ),
           ),
          ],
        ),
      ),
    ),
  );
}