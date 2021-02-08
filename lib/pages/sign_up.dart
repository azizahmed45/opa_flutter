import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/widgets/bordered_item.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: pageGradient,
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
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
                height: 10,
              ),
              BorderedItem(
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      hintText: 'email'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BorderedItem(
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Date of Birth'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BorderedItem(
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Country'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BorderedItem(
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'password'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BorderedItem(
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Confirm Password'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/others/Click-Spin.png'),
                          fit: BoxFit.cover)),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )
            ],
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
    );
  }
}
