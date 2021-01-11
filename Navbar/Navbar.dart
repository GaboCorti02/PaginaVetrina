import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 100),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Text(
            //   "SCANN3D",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white,
            //       fontSize: 30),
            // ),
            // Image.network(
            //   "assets/images/LogoBianco.svg",
            // ),
            Image.asset(
              //"assets/images/LogoBianco.svg",
              "assets/images/logowhite.png",
              //"assets/images/NameNoBorder.png",
              width: 250,
            ),
            Row(
              children: <Widget>[
                // SelectableText(
                //   "Home",
                //   style: TextStyle(color: Colors.white),
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                SelectableText(
                  "About Us",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 40,
                ),
                SelectableText(
                  "Templates",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Image.asset("assets/images/humanIconW.png"),
                  iconSize: 30,
                  onPressed: () {},
                )
                // MaterialButton(
                //   color: Colors.pink,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
                //   onPressed: () {},
                //   child: Text(
                //     "Get Started",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // )
                // Expanded(
                //   child: InkWell(
                //     onTap: () {
                //       doSomething();
                //     },
                //     child: Stack(
                //       children: <Widget>[
                //         Image.asset(
                //           "assets/images/humanIcon.png",
                //           width: 200,
                //         ),
                //         Text("Log-In"),
                //       ],
                //     ),
                //   ),
                // ),
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
