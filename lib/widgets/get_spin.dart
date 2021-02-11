import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/app_dialog.dart';


class GetSpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppDialog(
      child: Container(
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: FaIcon(
                    FontAwesomeIcons.times,
                    color: Colors.white,
                    size: 20,
                  ),
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                image: AssetImage(
                                    'assets/images/header/Spin-ICON.png'),
                                width: 20,
                                height: 20),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Get Spin",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 60,
                          child: Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.YELlOW_LITE,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    '1 SPIN',
                                    style: TextStyle(
                                        color: AppColors.TEAL_DARK,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/header/Watch-ICON.png'),
                                    width: 35,
                                    height: 35),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 2,
                        ),
                        Text(
                          "Watch Ad",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 60,
                          child: Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.TEAL_LITE,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    '2 SPIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/header/Spin-ICON.png'),
                                    width: 35,
                                    height: 35),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 2,
                        ),
                        Text(
                          "1\$",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 60,
                          child: Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.TEAL_LITE,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    '5 SPIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/header/Spin-ICON.png'),
                                    width: 35,
                                    height: 35),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 2,
                        ),
                        Text(
                          "2\$",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: AppColors.YELlOW_DARK,
                          height: 10,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Image(
                          width: 100,
                          image: AssetImage('assets/images/others/vpAcc.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
