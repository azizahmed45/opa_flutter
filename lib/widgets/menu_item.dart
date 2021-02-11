import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class MenuItem extends StatefulWidget {
  final String name;

  MenuItem({Key key, @required this.name});

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(color: AppColors.TEAL_LITE, shape: BoxShape.circle, border: Border.all()),
              ),
              SizedBox(width: 10,),
              Text(widget.name, style: TextStyle(color: Colors.white, fontSize: 25),)
            ],
          ),
          Divider(color: Colors.white, thickness: 2,)
        ],
      ),
    );
  }
}
