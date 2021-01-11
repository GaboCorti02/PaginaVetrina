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
            SelectableText(
              "Our mission is to introduce mankind to the digital third dimension by making 3D printing easily accessible.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            SelectableText(
              "Our project",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            SelectableText(
              "SCANN3D’s objective is to create an app whose goal is to make 3D printing universally accessible. "
              "The process of 3D printing can be achieved in two different ways: "
              "other than employing pre-existing models created by the users themselves, "
              "it is possible to scan an object just by using your phone’s camera from which a 3D model will be created. "
              "The finished product can then be collected in previously defined strategic spots.",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            SelectableText(
              "Our goal is to make 3D printers an easy to use tool which is available to the general public at a reasonable price: "
              "this is what differentiates us from other start-ups that only make 3D printing available to big companies.   ",
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
            SizedBox(
              height: 100,
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
    ];
  }

// class LandingPage extends StatelessWidget {
//   List<Widget> pageChildren(double width) {
//     return <Widget>[
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
//         child: Container(
//             child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   // Column(
//                   //   children: <Widget>[
//                   //     SelectableText(
//                   //       "Our mission is to introduce mankind to the digital third dimension by \nmaking 3D printing easily accessible.",
//                   //       style: TextStyle(
//                   //           fontWeight: FontWeight.bold,
//                   //           fontSize: 20.0,
//                   //           color: Colors.white),
//                   //     ),
//                   //   ],
//                   // ),
//                   // // SizedBox(
//                   // //   height: 50,
//                   // // ),
//                   // Column(
//                   //   children: <Widget>[
//                   //     Image.asset(
//                   //       "assets/images/lp_image.png",
//                   //       width: 350,
//                   //       height: 350,
//                   //     ),
//                   //   ],
//                   // )

//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Image.asset(
//                       "assets/images/lp_image.png",
//                       width: 350,
//                       height: 350,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 10),
//                     child: Row(children: <Widget>[
//                       SelectableText(
//                         "Our mission is to introduce mankind to the digital third dimension by \nmaking 3D printing easily accessible.",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20.0,
//                             color: Colors.white),
//                       ),
//                     ]),
//                   )
//                 ]),

//             //     SelectableText(
//             //       "Our project:",
//             //       style: TextStyle(
//             //           fontWeight: FontWeight.bold,
//             //           fontSize: 22.0,
//             //           color: Colors.white),
//             //     ),
//             //     SizedBox(
//             //       height: 15,
//             //     ),
//             //     SelectableText(
//             //       "SCANN3D’s objective is to create an app whose goal is\n"
//             //       "to make 3D printing universally accessible. "
//             //       "The process of 3D printing\ncan be achieved in two different ways: "
//             //       "other than employing \npre-existing models created by the users themselves,\n"
//             //       "it is possible to scan an object just by using your phone’s camera\nfrom which a 3D model will be created. "
//             //       "\nThe finished product can then be collected in previously defined strategic spots.",
//             //       style: TextStyle(
//             //           fontWeight: FontWeight.normal,
//             //           fontSize: 18.0,
//             //           color: Colors.white),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     SelectableText(
//             //       "Our goal is to make 3D printers an easy to use tool which is available to the general public\nat a reasonable price: "
//             //       "this is what differentiates us from other start-ups\nthat only make 3D printing available to big companies.   ",
//             //       style: TextStyle(
//             //           fontWeight: FontWeight.normal,
//             //           fontSize: 18.0,
//             //           color: Colors.white),
//             //     ),
//             //     ),

//             //     // SizedBox(
//             //     //   width: 600,
//             //     // ),
//             //     new Column(
//             //       children: <Widget>[

//             //         SizedBox(
//             //           height: 100,
//             //         ),
//             //         SelectableText(
//             //           "Our Team is composed by 8 guys:\n-Andrea Lucia;\n-Gabriele Corti;\n"
//             //           "-Riccardo Barone;\n-Alessandro Trezzi;\n-Samuele Floris;\n-Nicolo' Ravasio;"
//             //           "\n-Simone Riccio;\n-Alessandro Bacchio.",
//             //           style: TextStyle(
//             //               fontWeight: FontWeight.normal,
//             //               fontSize: 18.0,
//             //               color: Colors.white),
//             //         ),
//             //       ],
//             //     )
//           ],
//         )),
//       ),
//     ];
//   }

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
