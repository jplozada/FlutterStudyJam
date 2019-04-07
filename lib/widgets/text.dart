import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  String vtitle = "";
  Color vColor;
  double vSize = 16;
  double vTopMar = 0.0;
  double vBotMar = 0.0;
  double vLeftMar = 0.0;
  double vRigMar = 0.0;

  WidgetText(this.vtitle, this.vColor, this.vSize, this.vLeftMar, this.vRigMar, this.vTopMar, this.vBotMar);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: vLeftMar, right: vRigMar, top: vTopMar, bottom: vBotMar),
      child: Text(
        vtitle,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: vColor,
            fontSize: vSize,
        ),
      ),
    );
  }
}
