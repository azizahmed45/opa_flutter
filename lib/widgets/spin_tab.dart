import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/get_spin.dart';
import 'package:opa_flutter/widgets/get_vip.dart';
import 'package:opa_flutter/widgets/spin_win.dart';
import 'package:opa_flutter/widgets/spinner/spinner.dart';

class SpinTab extends StatefulWidget {
  @override
  _SpinTabState createState() => _SpinTabState();
}

class _SpinTabState extends State<SpinTab> with SingleTickerProviderStateMixin {
  bool _showGetSpin = false;
  bool _showGetVip = false;
  bool _showWin = false;
  bool _startSpinner = false;
  int wonPinnt = 0;

  AnimationController _animationController;
  Tween<double> tween;
  double value = 0;
  int duration = 3;


  bool success = false;

  double endAngle = ((2 * pi) / 8) / 2;
  double startAngle = ((2 * pi) / 8) / 2;

  @override
  void initState() {
    tween = Tween<double>(begin: 0, end: value);

    super.initState();
  }

  void toggleGetSpin() {
    setState(() {
      _showGetSpin = !_showGetSpin;
    });
  }

  void toggleShowWin() {
    setState(() {
      _showWin = !_showWin;
    });
  }

  void toggleGeVip() {
    setState(() {
      _showGetVip = !_showGetVip;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("log l0g ${width}");
    return Container(
      child: Stack(
        alignment: Alignment.center,
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
          SizedBox(height: height/50,),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: width / 1.4,
                  child: Stack(
                    children: <Widget>[
                      Image(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/others/spin_bg_dec.png'),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: AnimatedContainer(
                            curve: Curves.easeInOutCirc,
                            duration: Duration(seconds: 5),
                              child: Spinner(startAngle: startAngle, endAngle: endAngle, toggleShowWin: toggleShowWin,))
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

                          // TweenAnimationBuilder(
                          //   tween: Tween<double>(begin: 0, end:  value),
                          //   duration: Duration(seconds: 2),
                          //   child: Spinner(angle: angle),
                          //     onEnd: (){
                          //       var won = value.remainder(2*pi);
                          //       var perItem = (2*pi) / 8;
                          //       won = won/perItem;
                          //       print("$won");
                          //       setState(() {
                          //         _showWin = true;
                          //         wonPinnt = (8 - won.ceil() -2)  * 1000;
                          //       });
                          //
                          //     },
                          //     // onEnd: () =>
                          //     // setState(() {
                          //     //   if(_startSpinner && !success){
                          //     //     value += 2*pi;
                          //     //     curve = Curves.linear;
                          //     //   } else if( _startSpinner && success){
                          //     //     // value += pi;
                          //     //     curve = Curves.easeOut;
                          //     //     // _startSpinner = !_startSpinner;
                          //     //   }
                          //     // })
                          //     // ,
                          //     curve: curve,
                          //     builder: (_, angle, widget){
                          //       return Transform.rotate(angle: angle, child: widget,);
                          //     },
                          // )
                          )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      int random = new Random().nextInt(8);
                      double perSlice = (2 * pi) / 8;
                      double middle = ((2 * pi) / 8) / 2;
                      endAngle += 12 * pi + perSlice * random;
                    });
                    // setState(() {
                    //   _startSpinner = true;
                    //   success = true;
                    //   // value += 2*pi + pi;
                    //   value += 3*pi + ((2*pi)/8)/2;
                    //   curve = Curves.easeOut;
                    // });
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
                      style: TextStyle(color: Colors.white, fontSize: width/15),
                    ),
                  ),
                ),
                Text(
                  "1 Spin Free",
                  style: TextStyle(color: Colors.white, fontSize: width/25),
                ),
                Text(
                  "Next free Spin 6h 44min",
                  style: TextStyle(color: Colors.white, fontSize: width/30),
                ),
                SizedBox(height: width/60,),
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
                            width: width/4,
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
                              width: width/4,
                              height: width/12,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    width: width/4,
                                    height: width/12,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: AppColors.TEAL_LITE,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Text(
                                      'Get Coins',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width/25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/header/Plus.png'),
                                      width: width/20,
                                      height: width/20,
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
          ),
          if (_showGetVip) GetVip(toggleGeVip),
          if (_showGetSpin) GetSpin(toggleGetSpin),
          if (_showWin) SpinWin(wonPinnt.toString(), toggleShowWin),
        ],
      ),
    );
  }
}
