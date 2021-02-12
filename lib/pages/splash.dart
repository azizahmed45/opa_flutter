import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoChar(
              char: "O",
              color: Colors.teal,
            ),
            LogoChar(
              char: "P",
              color: Colors.orangeAccent,
            ),
            LogoChar(
              char: "A",
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class LogoChar extends StatelessWidget {
  const LogoChar({this.char, this.color});

  final String char;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      char,
      style: TextStyle(
          color: color,
          fontSize: MediaQuery.of(context).size.width / 3,
          fontWeight: FontWeight.bold),
    );
  }
}
