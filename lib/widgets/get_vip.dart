import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/app_dialog.dart';

class GetVip extends StatelessWidget {

  final Function toggleView;

  GetVip(this.toggleView);

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      child: SingleChildScrollView(
        child: Stack(

          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: toggleView,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: FaIcon(
                      FontAwesomeIcons.times,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Image(
                  width: 150,
                  image: AssetImage('assets/images/others/vpAcc.png'),),
                    SizedBox(height: 10,),
                    Divider(
                      color: AppColors.YELlOW_DARK,
                      height: 10,
                      thickness: 2,
                    ),
                    SizedBox(height: 15,),
                    Text("5 free Spin Daily"
                        "\n\n"
                        "100 Coins Daily"
                        "\n\n"
                        "50% Discount for Extra Coins & Spins"
                        "\n\n"
                        "No Coins Limit",
                    style: TextStyle(color: Colors.white, fontSize: 18),),
                  SizedBox(height: 60,),

                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                      Align(
                        child: Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(color: AppColors.YELlOW_DARK, borderRadius: BorderRadius.circular(10)),
                        ),
                      )
                      ,
                      Align(
                        child: Container(
                          width: 145,
                          height: 35,
                          decoration: BoxDecoration(color: AppColors.TEAL_LITE, borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                        Align(
                          child: Container(
                            alignment: Alignment.center,
                            width: 145,
                            height: 35,
                            decoration: BoxDecoration(color: AppColors.TEAL_LITE, borderRadius: BorderRadius.circular(10)),
                            child: Text("Subscribe", style: TextStyle(color: Colors.white, fontSize: 20),),
                          ),
                        )
                    ],),
                  ),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
