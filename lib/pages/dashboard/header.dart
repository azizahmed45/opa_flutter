import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print("${width}");
    return SafeArea(
      child: Container(
        height: width/4,
        child: Column(
          children: <Widget>[
            Container(
              height: width/5.6,
              // color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Align(
                    widthFactor: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Image(
                      height: width/7.84,
                      width: width/7.84,
                      image: AssetImage('assets/images/header/VIP-1.png'),
                    ),
                  ),
                  Align(
                    widthFactor: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage:AssetImage('assets/images/others/pubg.png'),
                    ),
                  ),
                  Align(
                    widthFactor: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: width/39.2,
                                ),
                                Image(
                                  height: width/15.68,
                                  width: width/6.03,
                                  image:
                                      AssetImage('assets/images/header/WalletPar.png'),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: width/11.2,
                                ),
                                Text(
                                  "300",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Image(
                              height: width/13.06,
                              width: width/13.06,
                              image: AssetImage('assets/images/header/WalletC.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width/39.2,
                        ),
                        Image(
                          height: width/13.06,
                          width: width/13.06,
                          image: AssetImage('assets/images/header/Plus.png'),
                        ),
                        SizedBox(
                          width: width/39.2,
                        ),
                        Container(
                          height: width/13.06,
                          width: width/13.06,
                          child: Stack(
                            children: <Widget>[
                              Image(
                                height: width/13.06,
                                width: width/13.06,
                                image: AssetImage('assets/images/header/Notf-2.png'),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: width/112, top: 1),
                                  child: Text(
                                    "22",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width/65.33,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                            height: width/7,
                            width: width/7,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset("assets/images/others/launcher.png")),
                        //logo
                        SizedBox(width: 20,),
                        Text("Aziz Ahmed", style: TextStyle(fontSize: width/26.13, color: Colors.black),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(
                color: AppColors.TEAL_LITE,
                width: 1
              )),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/header/LIVE-Icon.png'), height: 15,),
                  SizedBox(width: 10,),
                  Text("This is now playing live !!", style: TextStyle(color: Colors.red, fontSize: 10),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
