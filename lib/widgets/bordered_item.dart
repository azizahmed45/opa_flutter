import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderedItem extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;

  BorderedItem({Key key, @required this.child, this.width, this.height});

  @override
  _BorderedItemState createState() => _BorderedItemState();
}

class _BorderedItemState extends State<BorderedItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width != null ? widget.width : double.infinity,
      height: widget.height != null ? widget.height : 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: widget.child,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    );
  }
}
