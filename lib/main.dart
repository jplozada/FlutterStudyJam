import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Noticias de videojuegos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Videojuegos(),
      ),
    ),
  );
}

class CardLanzamiento extends StatelessWidget {
  String LanzamientoImage = "";
  CardLanzamiento(this.LanzamientoImage);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 20.0),
        child: Stack(
          children: <Widget>[
            Container(
            height: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(LanzamientoImage),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 1.0)
                  )
                ]
              )
            )
          ],
        )
    );
  }
}
class CardActualizaciones extends StatelessWidget {
  String ActualizacionesImage = "";
  String ActualziacionesTitle = "";
  String ActualziacionesDesc = "";
  CardActualizaciones(this.ActualizacionesImage, this.ActualziacionesTitle, this.ActualziacionesDesc);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 20.0),
        child: Stack(
          children: <Widget>[
            Container(
                  height: 110.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ActualizacionesImage),
                          fit: BoxFit.fitWidth
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          bottomLeft: const Radius.circular(20.0)
                      ),
                  )
            ),
            Positioned(
              top: 20.0,
              left: 120.0,
                child: Text(
                  ActualziacionesTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500
                  ),
                )
            ),
            Positioned(
                top: 50.0,
                left: 120.0,
                child: Text(
                  ActualziacionesDesc,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                  ),
                )
            )
          ],
        ),
        decoration: BoxDecoration(
          border: new Border.all(color: Colors.black),
          color: Color(0xffC4E1F5),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75)
            )
          ]
         )
    );
  }
}

class ListCardActualizaciones extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dia = DateFormat("EEEEE").format(now);
    String mes = DateFormat("LLLL y").format(now);
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            '$dia, $mes',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10.0),
            child:Text(
              "Novedades",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500
              ),
            ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10.0),
            child:Text(
              "Lanzamientos",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w400
              ),
            ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10.0),
            child:CardLanzamiento("assets/images/supermariomaker2.jpg")
        ),
        Container(
            padding: EdgeInsets.only(top: 10.0),
            child:Text(
              "Lo nuevo",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w400
              ),
            ),
        ),
        CardActualizaciones("assets/images/wowlogo.png","World of Warcraft","Novedades del Parche 8.1.5"),
        CardActualizaciones("assets/images/battlefield1logo.png","Battlefield 1","Nuevos mapas"),
        CardActualizaciones("assets/images/lollogo.png","League of Legends","Nuevo campeon pronto!"),
        CardActualizaciones("assets/images/starcraft2logo.png","Starcraft 2","Campeonato a solo 3 meses"),
        CardActualizaciones("assets/images/godofwarlogo.png","God of War","Exito de la PS4"),
      ],
    );
  }
}

class Videojuegos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE3E3E3),
      padding: EdgeInsets.only(left: 10.0, top: 10.0),
          child: Stack(
            children: <Widget>[
              ListCardActualizaciones(),
            ],
          ),
      );
  }
}