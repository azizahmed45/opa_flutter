import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/get_spin.dart';
import 'package:opa_flutter/widgets/get_vip.dart';
import 'package:opa_flutter/widgets/spin_win.dart';
import 'package:opa_flutter/widgets/spinner/spinner.dart';

class SpinTab extends StatefulWidget{



  @override
  _SpinTabState createState() => _SpinTabState();
}

class _SpinTabState extends State<SpinTab> with SingleTickerProviderStateMixin{
  bool _showGetSpin = false;
  bool _showGetVip = false;
  bool _showWin = false;

  AnimationController _animationController;
  Tween<double> tween;
  double value = 2*pi;
  int duration =3;

  Curve curve = Curves.linear;

  bool success = false;
  @override
  void initState() {

    tween = Tween<double>(begin: 0, end:  value);

    super.initState();
  }




  void toggleGetSpin() {
    setState(() {
      _showGetSpin = !_showGetSpin;
    });
  }

  void toggleGeVip() {
    setState(() {
      _showGetVip = !_showGetVip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      image: AssetImage('assets/images/others/spin_bg_dec.png'),
                    ),
                    Align(
                        alignment: Alignment.center
                        ,child:
                        // AnimatedBuilder(
                        //   animation: _animationController,
                        //   child: Spinner(),
                        //   builder: (_, widget){
                        //     print("anim value: ${_animationController.value}");
                        //     print("value $value");
                        //
                        //     // if(_animationController.value.roundToDouble() == value.roundToDouble() && success){
                        //     //   _animationController.stop();
                        //     //   print("test");
                        //     // }
                        //     return  Transform.rotate(angle: _animationController.value, child: widget);
                        //   },
                        // )

                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end:  value),
                      duration: Duration(seconds: 2),
                      child: Spinner(),
                        onEnd: () =>
                        setState(() {
                          value += 2*pi;
                          curve = Curves.easeOut;
                        })
                        ,
                        curve: curve,
                        builder: (_, angle, widget){
                          return Transform.rotate(angle: angle, child: widget,);
                        },
                    )
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  // tween.animate(_animationController);
                  // _animationController.repeat(max: 2*pi );
                  // if(_animationController.isAnimating){
                  //   _animationController.stop();
                  //   // tween.animate(_animationController);
                  // } else {
                  //   _animationController.repeat();
                  // }
                  // setState(() {
                  //
                  // });

/*                  if(!_animationController.isAnimating){
                    _animationController.repeat(min: 0);
                    success = true;
                  }*/


                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/others/Click-Spin.png'),
                          fit: BoxFit.fill)),
                  child: Text(
                    "SPIN",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
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
                    //get vip
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: toggleGeVip,
                        child: Image(
                          width: 100,
                          image: AssetImage('assets/images/others/vpAcc.png'),
                        ),
                      ),
                    ),

                    //Get Coin/Spin
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: toggleGetSpin,
                          child: Container(
                            width: 100,
                            height: 35,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 35,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.TEAL_LITE,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Get Coins',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/header/Plus.png'),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        // Image(
                        //   width: 100,
                        //   image: AssetImage(
                        //       'assets/images/others/Get-Icon.png'),
                        // ),
                        )
                  ],
                ),
              ),
            ],
          ),
          if (_showGetVip) GetVip(toggleGeVip),
          if (_showGetSpin) GetSpin(toggleGetSpin),
          if (_showWin) SpinWin("7000"),
        ],
      ),
    );
  }
}
