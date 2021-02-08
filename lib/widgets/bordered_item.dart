import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderedItem extends StatefulWidget {
  final Widget child;
  final double width;

  BorderedItem({Key key, @required this.child, this.width});

  @override
  _BorderedItemState createState() => _BorderedItemState();
}

class _BorderedItemState extends State<BorderedItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width != null ? widget.width : double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: widget.child,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    );
  }
}
