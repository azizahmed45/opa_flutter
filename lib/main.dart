import 'package:flutter/material.dart';
import 'package:opa_flutter/pages/create_account.dart';
import 'package:opa_flutter/pages/dashboard/dashboard.dart';
import 'package:opa_flutter/pages/dashboard/header.dart';
import 'package:opa_flutter/pages/interests.dart';
import 'package:opa_flutter/pages/login.dart';
import 'package:opa_flutter/pages/sign_up.dart';
import 'package:opa_flutter/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body:
          DashBoard()
          // Header()
          // Interests()
          // SignUp()
          // CreateAccount()
          // Login()
          // Splash()
      ),
    );
  }
}

// ahm_ijal@hotmail.com
