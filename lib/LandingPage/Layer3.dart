import 'package:flutter/material.dart';

class Layer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Land3();
        } else if (constraints.maxWidth > 1000 && constraints.maxWidth < 1200) {
          return Land3();
        } else {
          return Land3Mobile();
        }
      },
    );
  }
}

class Land3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 100),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SelectableText(
              "Il nostro team ritiene che le stampanti 3D,\n"
              "sempre più popolari tra le aziende ma ancora poco disponibili\n"
              "tra i privati, possano seguire lo stesso percorso.\n"
              "Sebbene avere una stampa 3D possa a prima vista\n"
              "sembrare un inutile extra, ci sono moltissime occasioni in cui\n"
              "essa può essere d’impiego per un privato: per esempio,\n"
              "può essere possibile stampare piccoli pezzi di ricambio\n"
              "di vecchi oggetti che non si trovano più sul mercato. ",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  color: Colors.white),
            ),
            Row(
              children: <Widget>[
                SelectableText(
                  "IMPIEGO",
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

class Land3Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          SelectableText(
            "IMPIEGO",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.0,
                color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText(
            "Il nostro team ritiene che le stampanti 3D,\n"
            "sempre più popolari tra le aziende ma ancora poco disponibili\n"
            "tra i privati, possano seguire lo stesso percorso.\n"
            "Sebbene avere una stampa 3D possa a prima vista\n"
            "sembrare un inutile extra, ci sono moltissime occasioni in cui\n"
            "essa può essere d’impiego per un privato: per esempio,\n"
            "può essere possibile stampare piccoli pezzi di ricambio\n"
            "di vecchi oggetti che non si trovano più sul mercato. ",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.0,
                color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
