import 'package:flutter/material.dart';
import 'package:web1/main.dart';

class Layer0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Land0Mobile();
        } else if (constraints.maxWidth > 1000 && constraints.maxWidth < 1200) {
          return Land0Mobile();
        } else {
          return Land0Mobile();
        }
      },
    );
  }
}

class Land0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 100),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              "Our mission is to introduce mankind to the digital third dimension by making 3D printing easily accessible.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class Land0Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SelectableText(
                "Our mission is to introduce mankind to the digital third dimension by making 3D printing easily accessible.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
