import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Spinner extends StatefulWidget {

  final double startAngle;
  final double endAngle;
  Spinner({this.startAngle, this.endAngle});

  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  final colors = [
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.teal,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.indigo,
  ];

  Curve curve = Curves.easeOutCirc;
  // double value = 0;

  final int itemSize = 8;

  double angle = pi * 2 / 8;


  @override
  void initState() {
    super.initState();
  }

  // void spin(double angle){
  //   // value += 2*pi + pi;
  //   // value += 3*pi + ((2*pi)/8)/2;
  //   // value += angle;
  //   curve = Curves.easeOut;
  //
  // }

  @override
  Widget build(BuildContext context) {
    double spinnerSize = MediaQuery.of(context).size.width/1.5;
    return Container(
        width: spinnerSize,
        height: spinnerSize,
        // color: Colors.red,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            for (var i = 0; i < 8; i++)
              Transform.rotate(
                angle: i * angle,
                child: CustomPaint(
                  painter: MyPainter(text: (1000*i).toString() , color: colors[i], angle: angle, itemSize: itemSize),
                ),
              ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: widget.startAngle, end:  widget.endAngle),
              duration: Duration(seconds: 5),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/others/Spin-Pointer.png', height: spinnerSize/2.3,),
              ),
                curve: curve,
                builder: (_, angle, widget){
                  return Transform.rotate(angle: angle, child: widget,);
                }
            ),
            // Transform.rotate(
            //   angle: widget.angle ,
            //   child: Align(
            //     alignment: Alignment.topCenter,
            //     child: Image.asset('assets/images/others/Spin-Pointer.png', height: 130,),
            //   ),
            // ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/spin/Center.png', width: spinnerSize/4.2, height: spinnerSize/4.2,),
              ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/spin/Frame.png', width: spinnerSize, height: spinnerSize,),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/spin/Frame-Shadow.png', width: spinnerSize, height: spinnerSize,),
            ),

          ],
        ));
  }
}

class MyPainter extends CustomPainter {
  Color color = Colors.yellow;
  final String text;
  double angle = 45;
  int itemSize = 0;

  MyPainter({@required this.text,this.color, this.angle, @required this.itemSize});

  @override
  void paint(Canvas canvas, Size size) {
    var cx = size.width / 2;
    var cy = size.height / 2;

    var circlePaint = Paint()
    ..color = Colors.white;
    var circlePath = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx + cx + 10, cy)
      ..arcTo(Rect.fromCircle(center: Offset(cx, cy), radius: min(cx + 3, cy +3)), 0,
          angle, false)
      ..close();
    canvas.drawPath(circlePath, circlePaint);

    var paint = Paint()
      ..color = color;

    var path = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx + cx, cy)
      ..arcTo(Rect.fromCircle(center: Offset(cx, cy), radius: min(cx, cy)), 0,
          angle, false)
      ..close();
    canvas.drawPath(path, paint);

    canvas.save();

    var x = cx *  cos(angle/2);
    var y = cx *  sin(angle/2);

    // canvas.translate(cx + cx/2, cy + cy/itemSize);
    canvas.translate(cx + size.width/6.2, cy + size.width/300 );
    // canvas.rotate(angle/2);

    canvas.rotate(angle/2);

    TextSpan span = new TextSpan(
        style: new TextStyle(color: Colors.white, fontSize: size.width/10,
            fontFamily: 'Roboto', fontWeight: FontWeight.w900), text: text);
    TextPainter tp = new TextPainter(
        text: span, textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, new Offset(0, 0));
    // optional, if you saved earlier
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
