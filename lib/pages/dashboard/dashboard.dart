import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/pages/dashboard/header.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Header(),
            Positioned(
              bottom: 0,
              top: 100,
              child: Stack(
                children: <Widget>[
                  Image(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/others/Spin-BG.jpg'),
                  ),
                  Image(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/others/spin_bg.jpg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        child: Stack(
                          children: <Widget>[
                            Image(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/others/spin_bg_dec.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/others/Click-Spin.png'),
                                fit: BoxFit.fill)),
                        child: Text(
                          "SPIN",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Text(
                        "1 Spin Free",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Next free Spin 6h 44min",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Image(
                                width: 100,
                                image: AssetImage(
                                    'assets/images/others/vpAcc.png'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image(
                                width: 100,
                                image: AssetImage(
                                    'assets/images/others/Get-Icon.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: BottomNavigationBar(
                iconSize: 30,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      title: Text("Win"),
                      icon: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/footer/Win-Icon2.png'),
                      ),
                      activeIcon: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/footer/Win-Icon1.png'),
                      )),
                  BottomNavigationBarItem(
                      title: Text("Store"),
                      icon: Image(
                        height: 30,
                        width: 30,
                        image:
                            AssetImage('assets/images/footer/Store-Icon2.png'),
                      ),
                      activeIcon: Image(
                        height: 30,
                        width: 30,
                        image:
                            AssetImage('assets/images/footer/Store-Icon1.png'),
                      )),
                  BottomNavigationBarItem(
                      title: Text("Com"),
                      icon: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/footer/Com-Icon2.png'),
                      ),
                      activeIcon: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/footer/Com-Icon1.png'),
                      )),
                  BottomNavigationBarItem(
                      title: Text("Media"),
                      icon: Image(
                        height: 30,
                        width: 30,
                        image:
                            AssetImage('assets/images/footer/Media-Icon2.png'),
                      ),
                      activeIcon: Image(
                        height: 30,
                        width: 30,
                        image:
                            AssetImage('assets/images/footer/Media-Icon1.png'),
                      )),
                  BottomNavigationBarItem(
                      title: Text("Menu"),
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black26,
                        size: 30,
                      ),
                      activeIcon: Icon(
                        Icons.menu,
                        color: AppColors.TEAL_LITE,
                        size: 30,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
