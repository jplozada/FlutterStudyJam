import 'package:flutter/material.dart';

UpdatesList updatesList = UpdatesList(updates: [
  Update(
    image: "assets/images/wow.png",
    name: "World of Warcraft",
    desc:
    "New battlegrounds !!!",
    info: "El Parche 8.2 es el próximo parche de contenido de Battle for Azeroth, séptima expansión de World of Warcraft y que traerá gran cantidad de contenidos con nuevas zonas, nueva mazmorra, nueva banda, nueva arena nueva temporada y mucho más. Hasta la fecha todo lo que sabemos sobre el Parche 8.2 El Resurgir de Azshara fue revelado en los paneles de BlizzCon 2018 así como en las múltiples entrevistas y azules que les sucedieron."
  ),
  Update(
    image: "assets/images/lol.png",
    name: "League of Legends",
    desc:
    "New AP champ soon",
    info: "Once I was a prisoner. Like you. Locked away by cowards and hypocrites. Left to die for the way I was born. Nothing to live for but vengeance. Nothing to lose but my chains. Yet in the revolution to come—our revolution—these chains will liberate us all. And I will make sure we are never shackled again."
  ),
  Update(
    image: "assets/images/sc2.png",
    name: "Starcraft 2",
    desc:
    "New maps and campain gameplay",
    info: "Season 3 will end soon, which means we’re getting ready to spin up new maps for Season 4. For the next StarCraft II Versus season, we’re removing Acid Plant, Dreamcatcher, Lost and Found, and Fracture. Below you will find the new 1v1 maps we’re adding, as well as the new team maps."
  ),
  Update(
    image: "assets/images/bf1.png",
    name: "Battlefield 1",
    desc:
    "New weapons and maps !",
    info: "Battlefield 1: Apocalypse will arrive the first week of February for Premium Pass owners, and today, we have some gameplay footage for you as well as more information on the upcoming content. Apocalypse was announced as part of the Battlefield 1 expansion pass year, and now we know when it will be released."),
]);

class UpdatesList {
  List<Update> updates;
  UpdatesList({@required this.updates});
}

class Update {
  String image;
  String name;
  String desc;
  String info;

  Update(
      {
        @required this.image,
        @required this.name,
        @required this.desc,
        @required this.info,
      });
}
