import 'package:flutter/material.dart';

import '../models/msg.dart';

class ContactInfoAndMsgs extends StatelessWidget {
  final userName;
  final Msg lastMsg;

  const ContactInfoAndMsgs({
    required this.userName,
    required this.lastMsg,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final msgStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: (lastMsg.isUser || lastMsg.isRead)
          ? FontWeight.w400
          : FontWeight.w600,
    );

    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            userName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: 160,
            child: Text(
              lastMsg.txt,
              overflow: TextOverflow.ellipsis,
              style: msgStyle,
            ),
          ),
        ],
      ),
    );
  }
}
