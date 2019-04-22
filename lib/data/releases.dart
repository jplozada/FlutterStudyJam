import 'package:flutter/material.dart';

ReleasesList releasesList = ReleasesList(releases: [
  Release(
    image: "assets/images/smm2.png",
    name: "Super Mario Maker 2",
    desc:
    "June 2019",
  ),
  Release(
    image: "assets/images/crash.png",
    name: "Crash Team Racing Nitro",
    desc:
    "June 2019",
  ),
  Release(
    image: "assets/images/doom.png",
    name: "Doom Eternal",
    desc:
    "December 2019",
  ),
]);

class ReleasesList {
  List<Release> releases;
  ReleasesList({@required this.releases});
}

class Release {
  String image;
  String name;
  String desc;

  Release(
      {
        @required this.image,
        @required this.name,
        @required this.desc,
      });
}
