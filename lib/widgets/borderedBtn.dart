import 'package:flutter/material.dart';

class BorderedBtn extends StatelessWidget {
  final txt;
  final callback;
  final color;
  var txtStyle;
  BorderedBtn({
    required this.txt,
    required this.callback,
    this.color: Colors.black,
    this.txtStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (txtStyle == null) {
      txtStyle = TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 19,
      );
    }
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: color,
          ),
        ),
        child: Transform.translate(
          offset: Offset(0, 2),
          child: Text(
            txt,
            style: txtStyle,
          ),
        ),
      ),
    );
  }
}
