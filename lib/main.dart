import 'package:flutter/material.dart';
import 'package:opa_flutter/pages/create_account.dart';
import 'package:opa_flutter/pages/dashboard/dashboard.dart';
import 'package:opa_flutter/pages/dashboard/header.dart';
import 'package:opa_flutter/pages/interests.dart';
import 'package:opa_flutter/pages/login.dart';
import 'package:opa_flutter/pages/overview_slider.dart';
import 'package:opa_flutter/pages/sign_up.dart';
import 'package:opa_flutter/pages/splash.dart';
import 'package:opa_flutter/pages/update_info.dart';
import 'package:opa_flutter/pages/verification_page.dart';

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
      routes: {
        '/login': (_) => Login(),
        '/signUp': (_) => SignUp(),
        '/dashboard': (_) => DashBoard(),
        '/createAccount': (_) => CreateAccount(),
        '/verification': (_) => VerificationPage(),
        '/overview': (_) => OverviewSlider(),
        '/interests': (_) => Interests(),
      },
      home:
        Splash()
        // OverviewSlider()
        // VerificationPage()
          // Splash()
          // UpdateInfo()
          // DashBoard()
          // Header()
          // Interests()
          // SignUp()
          // CreateAccount()
          // Login()
          // Splash()

    );
  }
}

// ahm_ijal@hotmail.com
