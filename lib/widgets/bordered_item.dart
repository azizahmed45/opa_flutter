import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderedItem extends StatefulWidget {
  final Widget child;

  BorderedItem({Key key, @required this.child});

  @override
  _BorderedItemState createState() => _BorderedItemState();
}

class _BorderedItemState extends State<BorderedItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: widget.child,
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
    );
  }
}
