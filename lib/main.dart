import 'package:flutter/material.dart';
import 'package:web1/LandingPage/LandingPage.dart';
import 'package:web1/LandingPage/Layer3.dart';
import 'LandingPage/Layer2.dart';
import 'LandingPage/Layer0.dart';
import 'package:web1/Navbar/Navbar.dart';
import 'LandingPage/Globals.dart' as global;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SCANN3D",
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [
//               // Color.fromRGBO(85, 166, 160, 1.9),
//               Color.fromRGBO(0, 72, 200, 1.9),
//               //Color.fromRGBO(85, 116, 132, 1.9),
//               Color.fromRGBO(33, 121, 150, 1.9),
//               //Color.fromRGBO(166, 240, 230, 2.9)
//               // Color.fromRGBO(33, 131, 150, 1.5),
//               // Color.fromRGBO(173, 216, 230, 1.7)
//               //Color.fromRGBO(195, 20, 50, 1.0),
//               //Color.fromRGBO(2, 11, 54, 1.0)
//             ])),
//         alignment: Alignment.center,
//         child: Container(
//           width: (MediaQuery.of(context).size.width * 80) / 100,
//           height: (MediaQuery.of(context).size.height * 80) / 100,
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Navbar(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 1.0, horizontal: 10.0),
//                   child: LandingPage(),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    global.height = MediaQuery.of(context).size.height;
    global.width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(0, 72, 200, 1.9),
                  Color.fromRGBO(33, 121, 150, 1.9),
                  //Color.fromRGBO(85, 166, 160, 1.9),
                  //Color.fromRGBO(2, 11, 54, 1.0),
                  //Color.fromRGBO(85, 116, 132, 1.9),
                  //Color.fromRGBO(166, 240, 230, 2.9)
                  // Color.fromRGBO(33, 131, 150, 1.5),
                  // Color.fromRGBO(173, 216, 230, 1.7)
                  //Color.fromRGBO(195, 20, 50, 1.0),
                ]),
            // image: DecorationImage(
            //   image: NetworkImage(
            //     "assets/images/templatePages.png",
            //   ),
            //   fit: BoxFit.fitHeight,
            // )
          ),
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // decoration: myBoxDecoration(),
            // BoxDecoration(
            //     image: DecorationImage(
            //         image: NetworkImage(
            //   setTemplate(MediaQuery.of(context).size.width,
            //       MediaQuery.of(context).size.height),
            //   //"assets/images/2templatePages.png",
            //   //"assets/images/3templatePage.png",
            // ))
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image.asset(
                //   "assets/images/templatePages.png",
                //   width: 400,
                //   height: 400,
                // ),
                Container(
                  width: (MediaQuery.of(context).size.width * 90) / 100,
                  height: (MediaQuery.of(context).size.height * 90) / 100,
                  decoration: myBoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Navbar(),
                        Layer0(),
                        LandingPage(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Container(
                              height: 2.0,
                              width: (MediaQuery.of(context).size.width * 70) /
                                  100,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Layer2(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Layer3(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

String setTemplate(width, height) {
  if (width > 1750) {
    return "assets/images/2templatePages.png";
  } else if (width > 1600) {
    return "assets/images/3templatePage.png";
  } else if (width > 1200) {
    return "assets/images/4templatePage.png";
  } else {
    return "assets/images/5templatePage.png";
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 3.0, color: Colors.white),
    borderRadius: BorderRadius.all(
        Radius.circular(15.0) //                 <--- border radius here
        ),
  );
}
