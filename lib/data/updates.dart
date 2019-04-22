import 'package:flutter/material.dart';

UpdatesList updatesList = UpdatesList(updates: [
  Update(
    image: "assets/images/wow.png",
    name: "World of Warcraft",
    desc:
    "New battlegrounds !!!",
  ),
  Update(
    image: "assets/images/lol.png",
    name: "League of Legends",
    desc:
    "New AP champ soon",
  ),
  Update(
    image: "assets/images/sc2.png",
    name: "Starcraft 2",
    desc:
    "New maps and campain gameplay",
  ),
  Update(
    image: "assets/images/bf1.png",
    name: "Battlefield 1",
    desc:
    "New weapons and maps !",
  ),
]);

class UpdatesList {
  List<Update> updates;
  UpdatesList({@required this.updates});
}

class Update {
  String image;
  String name;
  String desc;

  Update(
      {
        @required this.image,
        @required this.name,
        @required this.desc,
      });
}
