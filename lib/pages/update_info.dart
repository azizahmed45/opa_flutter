import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/widgets/bordered_item.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class UpdateInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                Text('Update your Info', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                Text('to Get 200 Coins', textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Divider(color: Colors.black, thickness: 2, indent: 50, endIndent: 50,),
                Text('Make sure that your information is correct \n to get the offers that suit you.', textAlign: TextAlign.center,),
                SizedBox(
                  height: 10,
                ),CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FaIcon(FontAwesomeIcons.user,
                      size: 60, color: Colors.black26),
                  minRadius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'First Name'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Last Name'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Phone Number'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Gender'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Info'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BorderedItem(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Info'),
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
                      "Get 200 Coins",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
