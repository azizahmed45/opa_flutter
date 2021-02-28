import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              // color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Align(
                    widthFactor: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Image(
                      height: 50,
                      width: 50,
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
                                  width: 10,
                                ),
                                Image(
                                  height: 25,
                                  width: 65,
                                  image:
                                      AssetImage('assets/images/header/WalletPar.png'),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  "300",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Image(
                              height: 30,
                              width: 30,
                              image: AssetImage('assets/images/header/WalletC.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image(
                          height: 30,
                          width: 30,
                          image: AssetImage('assets/images/header/Plus.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Stack(
                            children: <Widget>[
                              Image(
                                height: 30,
                                width: 30,
                                image: AssetImage('assets/images/header/Notf-2.png'),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 3.5, top: 1),
                                  child: Text(
                                    "22",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 6,
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
                        //logo
                        Text('O', style: TextStyle(fontSize: 20, color: AppColors.TEAL_LITE, fontWeight: FontWeight.bold),),
                        Text('P', style: TextStyle(fontSize: 20, color: AppColors.YELlOW_LITE, fontWeight: FontWeight.bold),),
                        Text('A', style: TextStyle(fontSize: 20, color: Colors.black,  fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                        Text("Aziz Ahmed", style: TextStyle(fontSize: 15, color: Colors.black),)
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
