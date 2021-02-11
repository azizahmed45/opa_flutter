import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/pages/dashboard/header.dart';
import 'package:opa_flutter/pages/dashboard/store_page.dart';
import 'package:opa_flutter/widgets/get_spin.dart';
import 'package:opa_flutter/widgets/spin_tab.dart';

import 'menu_page.dart';

class DashBoard extends StatefulWidget {

  final List<Widget> _tabs = [
    SpinTab(),
    StorePage(),
    StorePage(),
    StorePage(),
    MenuPage()
  ];

  int _selected = 0;

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Header(),
            Positioned(
              top: 100,
              child: widget._tabs[widget._selected],
              // child: MenuPage(),
              // child: SpinTab(),
              // child: GetSpin(),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: BottomNavigationBar(
                currentIndex: widget._selected,
                iconSize: 30,
                onTap: (selected) {
                  setState(() {
                    widget._selected = selected;
                  });
                },
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
