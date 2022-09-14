import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';

class MsgWidget extends StatelessWidget {
  final msg;
  const MsgWidget({
    required this.msg,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
      children: [
        Container(
          margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
              left: msg.isUser ? 50 : 0,
              right: !msg.isUser ? 50 : 0),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: msg.isUser
                ? BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
            color: msg.isUser ? AppColors.purple : AppColors.blackerGrey,
          ),
          child: Text(
            msg.txt,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
