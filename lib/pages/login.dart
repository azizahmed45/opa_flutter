import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/widgets/bordered_item.dart';
import 'package:opa_flutter/widgets/gradient.dart';
import '';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: pageGradient,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(40, 100, 40, 20),
      child: Column(
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
            "OJ Time",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
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
            height: 15,
          ),
          BorderedItem(
            child: TextFormField(
              obscureText: true,
              style: TextStyle(fontSize: 20, color: Colors.white),
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
            child: FlatButton(
              child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white),),
              onPressed: ()=>{},
            ),
          ),
          SizedBox(height: 20,),
          Text("OR", style: TextStyle(color: Colors.black, fontSize: 25),),
          Text("login with", style: TextStyle(color: Colors.black, fontSize: 18),)
        ],
      ),
    );
  }
}
