import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';

class Profile extends StatefulWidget {
  final Function toggleView;

  Profile(this.toggleView);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height - 80,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
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
                    "Profile",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              color: AppColors.TEAL_LITE,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FaIcon(FontAwesomeIcons.user,
                            size: 60, color: Colors.black26),
                        minRadius: 50,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FieldItem(
                            keyName: "ID",
                            value: "685465465465",
                          ),
                          FieldItem(
                            keyName: "Name",
                            value: "Aziz Ahmed",
                          ),
                          FieldItem(
                            keyName: "Email",
                            value: "aziz@gmail.com",
                            isBold: false,
                          ),
                          FieldItem(
                            keyName: "Phone",
                            value: "+8801682988355",
                            isBold: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.TEAL_DARK,
                                borderRadius: BorderRadius.circular(20)),
                            padding:
                                EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                            child: Row(
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.pen,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Interest",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: width / 3,
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Your Favourite Games", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.TEAL_LITE,
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.pen,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 3, color: Colors.black, indent: 20, endIndent: width/1.5,)
            ,Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 10,
                children: <Widget>[
                  ChoiceChip(
                    label: Text(
                      "FIFA",
                      style: TextStyle(color: Colors.black),
                    ),
                    selected: true,
                    selectedColor: AppColors.YELlOW_LITE,
                  ),
                  ChoiceChip(
                    label: Text(
                      "PUBG",
                      style: TextStyle(color: Colors.black),
                    ),
                    selected: true,
                    selectedColor: AppColors.YELlOW_LITE,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("You Play On", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.TEAL_LITE,
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.pen,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 3, color: Colors.black, indent: 20, endIndent: width/1.5,)
            ,Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 10,
                children: <Widget>[
                  ChoiceChip(
                    label: Text(
                      "FIFA",
                      style: TextStyle(color: Colors.black),
                    ),
                    selected: true,
                    selectedColor: AppColors.YELlOW_LITE,
                  ),
                  ChoiceChip(
                    label: Text(
                      "PUBG",
                      style: TextStyle(color: Colors.black),
                    ),
                    selected: true,
                    selectedColor: AppColors.YELlOW_LITE,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: width,
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(color: AppColors.YELlOW_LITE, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black, width: 1)),
                child: Text("Update your Info \n to Get 200 Coins", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FieldItem extends StatelessWidget {
  final String keyName;
  final String value;
  final bool isBold;

  FieldItem({this.keyName, this.value, this.isBold = true});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: <Widget>[
            Text("$keyName : "),
            Text(
              value,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            )
          ],
        ));
  }
}
