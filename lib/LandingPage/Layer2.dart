import 'package:flutter/material.dart';

class Layer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Land();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return Land();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 100),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SelectableText(
              "NASCITA DEL PROGETTO",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  color: Colors.white),
            ),
            Row(
              children: <Widget>[
                SelectableText(
                  "L'ispirazione per il progetto SCANN3D nasce dall’analisi \n"
                  "della diffusione della stampante tradizionale tra\n"
                  "il pubblico: le stampanti, strumenti inizialmente presenti\n"
                  "sono negli uffici, sono riuscite a riscuotere popolarità tra\n"
                  "la gente comune tramite la diffusione di appositi centri di\n"
                  "stampa, fino a diventare oggetti comuni in ciascuna casa.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Image.asset(
            "assets/images/logowhite.png",
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Templates",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
