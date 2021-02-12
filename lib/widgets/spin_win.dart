import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class SpinWin extends StatelessWidget {
  final String value;

  SpinWin(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.OPACITY,
        alignment: Alignment.center,
        child: Column(
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
                    Text("Congratulations", style: TextStyle(color: AppColors.YELlOW_DARK, fontSize: 30, fontWeight: FontWeight.bold),),
                    Text(value, style: TextStyle(color: AppColors.YELlOW_DARK, fontSize: 80, fontWeight: FontWeight.w900),),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 220,
            )
          ],
        ));
  }
}
