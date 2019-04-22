import 'package:flutter/material.dart';
class WidgetText extends StatelessWidget {
  String vtitle;
  Color vColor;
  double vSize = 16;
  double vTopMar = 0.0;
  double vLeftMar = 0.0;
  WidgetText(this.vtitle, this.vColor, this.vSize, this.vLeftMar, this.vTopMar);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: vLeftMar, top: vTopMar),
      child: Text(
        vtitle,
        textDirection: TextDirection.ltr,
        softWrap: true,
        style: TextStyle(
            color: vColor,
            fontSize: vSize,
            fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
