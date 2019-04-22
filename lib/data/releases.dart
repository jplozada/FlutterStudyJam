import 'package:flutter/material.dart';

ReleasesList releasesList = ReleasesList(releases: [
  Release(
    image: "assets/images/smm2.png",
    name: "Super Mario Maker 2",
    desc:
    "June 2019",
    info: "Let your imagination run wild with new tools, course parts, and features as you create the Super Mario courses of your dreams. This sequel to Super Mario Maker launches exclusively on Nintendo Switch. Super Mario Maker 2 is coming to the Nintendo Switch. The sequel was revealed during a Nintendo Direct presentation in February. As you probably guessed from the title, this will be a sequel to Super Mario Maker for the Wii U and not an updated port of the Wii U game."
  ),
  Release(
    image: "assets/images/crash.png",
    name: "Crash Team Racing Nitro",
    desc:
    "June 2019",
    info: "Después del rotundo éxito que Activision logró con la remasterización de la trilogía Crash Bandicoot, ahora ha anunciado junto a Beenox lo que los fans de la saga anhelaban: el marsupial naranja regresa a las consolas de última generación con Crash Team Racing Nitro-Fueled."
  ),
  Release(
    image: "assets/images/doom.png",
    name: "Doom Eternal",
    desc:
    "December 2019",
    info: "DOOM® Eternal™, desarrollado por id Software, es la secuela directa del galardonado superventas DOOM® (2016). Disfruta de la mejor combinación de velocidad y potencia mientras viajas destrozando y desgarrando de una dimensión a otra en un salto cualitativo en el combate en primera persona en avance continuo que caracterizó al juego original. DOOM Eternal cuenta con tecnología idTech 7 y con una banda sonora completamente nueva, a cargo de Mick Gordon, que te acelerará el pulso."
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
  String info;

  Release(
      {
        @required this.image,
        @required this.name,
        @required this.desc,
        @required this.info,
      });
}
