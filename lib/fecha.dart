import 'package:intl/intl.dart';

String toString() {
  String y = _fourDigits(year);
  String m = _twoDigits(month);
  String d = _twoDigits(day);
  String h = _twoDigits(hour);
  String min = _twoDigits(minute);
  String sec = _twoDigits(second);
  String ms = _threeDigits(millisecond);
  String us = microsecond == 0 ? "" : _threeDigits(microsecond);
  if (isUtc) {
    return "$y-$m-$d $h:$min:$sec.$ms${us}Z";
  } else {
    return "$y-$m-$d $h:$min:$sec.$ms$us";
  }
}