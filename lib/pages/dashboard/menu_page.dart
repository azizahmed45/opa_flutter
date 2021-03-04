import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/menu_item.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.TEAL_DARK,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(30),
      child: Column(

        children: <Widget>[
          MenuItem(name: "Profile",),
          MenuItem(name: "Notifications",),
          MenuItem(name: "Account",),
          MenuItem(name: "About",),
          MenuItem(name: "Terms and Condition",),
          MenuItem(name: "Share this App",),
          MenuItem(name: "Logout",),
        ],
      ),
    );
  }
}
