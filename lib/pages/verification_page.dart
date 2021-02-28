import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: pageGradient,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(40, 80, 40, 0),
        child: Column(
          children: <Widget>[
            Text("Verification Link", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
            SizedBox(height: 15,),
            Text(
                "check your email and Click the verification link to activate your account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
