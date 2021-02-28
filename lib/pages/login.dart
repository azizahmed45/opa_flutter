import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/widgets/bordered_item.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: pageGradient,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "OPA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 80, color: Colors.white),
            ),
            Text(
              "WELCOME TO",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Text(
              "OPA live",
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            BorderedItem(
              width: 300,
              child: TextFormField(
                style: TextStyle(fontSize: 18, color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    hintText: 'username'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            BorderedItem(
              width: 300,
              child: TextFormField(
                obscureText: true,
                style: TextStyle(fontSize: 18, color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    hintText: 'password'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            BorderedItem(
              width: 300,
              child: FlatButton(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: (){
                  Navigator.popAndPushNamed(context, "/dashboard");
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OR",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "login with",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  icon: FaIcon(FontAwesomeIcons.google),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () {},
                )
              ],
            ),
            OutlineButton(
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/createAccount");
              },
            ),
            SizedBox(height: 10,),
            Text(
              "تغيير اللغة الى العربية",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              "Term of Use",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
