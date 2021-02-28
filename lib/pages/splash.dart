import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  final splashDelay = 3;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset("assets/images/others/logo.png"),
        )
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
