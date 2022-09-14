import 'package:connectify/consts.dart';
import 'package:connectify/models/msg.dart';
import 'package:flutter/material.dart';

class UnreadMsgsCountAndMsgTime extends StatelessWidget {
  final List<Msg> msgs;
  UnreadMsgsCountAndMsgTime({required this.msgs, super.key});

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: double.infinity,
      );
    return textPainter.size;
  }

  var txtStyle = TextStyle(
    fontSize: 11,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    var unReadMsgLenght = msgs.where((msg) => !msg.isRead).toList().length;
    var txt = unReadMsgLenght == 0
        ? ""
        : unReadMsgLenght < 99
            ? unReadMsgLenght.toString()
            : "+ 99";

    var txtSize = _textSize(txt, txtStyle);
    var containerOffsets = Offset(10, 18);
    var txtOffset = Offset((containerOffsets.dx - txt.length / 2) / 2,
        (containerOffsets.dy - _textSize(txt, txtStyle).height) / 2);

    return SizedBox(
      height: 45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            msgs.length > 0 ? msgs[msgs.length - 1].time : "",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
            ),
          ),
          if (txt != "")
            Container(
              height: containerOffsets.dy,
              width: _textSize(txt, txtStyle).width + containerOffsets.dx,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.white,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Transform.translate(
                offset: txtOffset,
                child: Text(
                  txt,
                  style: txtStyle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
