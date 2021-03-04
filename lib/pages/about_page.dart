import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_color.dart';

class About extends StatefulWidget {

  final Function toggleView;

  About(this.toggleView);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height - 120,
      color: Colors.white,
      child: SingleChildScrollView(
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
                    "About",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
             Column(
                children: <Widget>[
                  Image.network(
                    "https://thenationroar.com/wp-content/uploads/2020/07/banner-1536x864-1.png",
                    height: MediaQuery.of(context).size.width / 2,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: 100,
                      decoration: BoxDecoration(
                          color: AppColors.TEAL_LITE,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.share,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Title of About",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic"),
                    ),
                  )
                ],
              ),
           
          ],
        ),
      ),
    );
  }
}
