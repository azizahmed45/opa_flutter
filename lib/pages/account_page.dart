import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/pages/profile_page.dart';

import '../app_color.dart';

class AccountPage extends StatefulWidget {
  final Function toggleView;

  AccountPage(this.toggleView);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height - 80,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    widget.toggleView();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    size: width / 13.06,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Type: Free Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Image(
                    width: width/4,
                    image: AssetImage('assets/images/others/vpAcc.png'),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.black,
            indent: 20,
            endIndent: width / 1.5,
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Language:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.TEAL_LITE,
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child:
                        Text(
                          "English",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),

                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.YELlOW_LITE,
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child:
                    Text(
                      "عربي",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                ],),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.black,
            indent: 20,
            endIndent: width / 1.5,
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child:
                Text(
                  "Payment:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

          ),
          Divider(
            thickness: 3,
            color: Colors.black,
            indent: 20,
            endIndent: width / 1.5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FieldItem(keyName: "Card Name:", value: "American Express",),
                    FieldItem(keyName: "Card Number:", value: "153 563 456 332",)
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.TEAL_LITE,
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child:
                  Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
