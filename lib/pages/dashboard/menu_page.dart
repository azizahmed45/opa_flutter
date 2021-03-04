import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/pages/notification_page.dart';
import 'package:opa_flutter/widgets/menu_item.dart';

import '../about_page.dart';
import '../profile_page.dart';
import '../account_page.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _showProfilePage = false;
  bool _showNotifications = false;
  bool _showAccountPage = false;
  bool _showAboutPage = false;

  void showProfile() {
    setState(() {
      _showProfilePage = !_showProfilePage;
    });
  }

  void showNotifications() {
    setState(() {
      _showNotifications = !_showNotifications;
    });
  }

  void showAccountPage() {
    setState(() {
      _showAccountPage = !_showAccountPage;
    });
  }

  void showAboutPage() {
    setState(() {
      _showAboutPage = !_showAboutPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: AppColors.TEAL_DARK,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          child:
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: showProfile,
                        child: MenuItem(name: "Profile",)),
                    GestureDetector(
                        onTap: showNotifications,
                        child: MenuItem(name: "Notifications",)),
                    GestureDetector(
                        onTap: showAccountPage,
                        child: MenuItem(name: "Account",)),
                    GestureDetector(
                        onTap: showAboutPage,
                        child: MenuItem(name: "About",)),
                    MenuItem(name: "Terms and Condition",),
                    MenuItem(name: "Share this App",),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, "/login");
                        },
                        child: MenuItem(name: "Logout",)),
                  ],
                ),
              )
        ),
        if(_showProfilePage) Profile(showProfile),
        if(_showNotifications) NotificationPage(showNotifications),
        if(_showAccountPage) AccountPage(showAccountPage),
        if(_showAboutPage) About(showAboutPage)
      ],
    );
  }
}
