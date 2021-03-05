import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class SpinWin extends StatelessWidget {
  final String value;
  final Function toggleShowWin;

  SpinWin(this.value, this.toggleShowWin);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleShowWin,
      child: Container(
          color: AppColors.OPACITY,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/others/Cong-PopUp.png'),
                  ),
                  Column(
                    children: <Widget>[
                      Text("Congratulations", style: TextStyle(color: AppColors.YELlOW_LITE, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text(value, style: TextStyle(color: AppColors.YELlOW_LITE, fontSize: 80, fontWeight: FontWeight.w900),),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
