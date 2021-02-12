import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/widgets/bordered_item.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: Container(
          decoration: pageGradient,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: FaIcon(FontAwesomeIcons.user,
                        size: 60, color: Colors.black26),
                    minRadius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "CREATE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    "ACCOUNT",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
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
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(bottom: 3, top: 3),
                    child: Text(
                      "4 character minimum",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10,),
                    ),
                  ),
                  BorderedItem(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                          hintText: 'email'),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(bottom: 3, top: 3),
                    child: Text(
                      "Please enter a valid e-mail address",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10,),
                    ),
                  ),
                  BorderedItem(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Date of Birth'),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(bottom: 3, top: 3),
                    child: Text(
                      "You must be over 13 years old",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10,),
                    ),
                  ),
                  BorderedItem(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Country'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BorderedItem(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'password'),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(bottom: 3, top: 3),
                    child: Text(
                      "At least 8 characters",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10,),
                    ),
                  ),
                  BorderedItem(
                    width: 300,
                    child: TextFormField(
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Confirm Password'),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(bottom: 3, top: 3),
                    child: Text(
                      "Please enter the corresponding password",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10,),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/others/Click-Spin.png'),
                              fit: BoxFit.cover)),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "By signing up you are agree to the ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Term of Use",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
