import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class AppDialog extends StatefulWidget {
  final Widget child;

  AppDialog({Key key, this.child});

  @override
  _AppDialogState createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height - 220,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: AppColors.TEAL_OPACITY,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black54, spreadRadius: 3, blurRadius: 10)
          ]),
      child: widget.child,
    );
  }
}