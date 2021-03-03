import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Spinner extends StatefulWidget {



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

  Curve curve = Curves.linear;
  double value = 0;

  final int itemSize = 8;

  double angle = pi * 2 / 8;

  @override
  void initState() {
      // value += 2*pi + pi;
      value += 3*pi + ((2*pi)/8)/2;
      curve = Curves.easeOut;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 300,
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
              tween: Tween<double>(begin: 0, end:  value),
              duration: Duration(seconds: 5),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/others/Spin-Pointer.png', height: 130,),
              ),
                curve: curve,
                builder: (_, angle, widget){
                  return Transform.rotate(angle: angle, child: widget,);
                }
            ),
            // Transform.rotate(
            //   angle: (pi/2) + ((pi*2)/8)/2 ,
            //   child: Align(
            //     alignment: Alignment.topCenter,
            //     child: Image.asset('assets/images/others/Spin-Pointer.png', height: 130,),
            //   ),
            // ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/spin/Center.png', width: 70, height: 70,),
              ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/spin/Frame.png', width: 300, height: 300,),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/spin/Frame-Shadow.png', width: 300, height: 300,),
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
    canvas.translate(cx + 60, cy + 5 );
    // canvas.rotate(angle/2);

    canvas.rotate(angle/2);

    TextSpan span = new TextSpan(
        style: new TextStyle(color: Colors.white, fontSize: 30.0,
            fontFamily: 'Roboto', fontWeight: FontWeight.w900, ), text: text);
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
