import 'package:flutter/material.dart';
import 'Globals.dart' as global;

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SelectableText(
            //   "Our mission is to introduce mankind to the digital third dimension by making 3D printing easily accessible.",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20.0,
            //       color: Colors.white),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            SizedBox(
              height: 15,
            ),
            SelectableText(
              "Our Team is composed by 8 students:\n- Alessandro Bacchio;\n"
              "- Alessandro Trezzi;\n- Andrea Lucia;\n- Gabriele Corti;\n"
              "- Nicolò Ravasio;\n- Riccardo Barone;\n- Samuele Floris;\n"
              "- Simone Riccio.",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 1.0,
        ),
        child: SizedBox(
          width: global.width / 8,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/images/lp_image.png",
              width: 330,
              height: 330,
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
