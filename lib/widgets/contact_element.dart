import 'package:connectify/models/contact.dart';
import 'package:connectify/models/msg.dart';
import 'package:connectify/widgets/contact_element_header.dart';
import 'package:flutter/material.dart';

import 'contact_element_footer.dart';
import 'contact_element_body.dart';

class ContactElement extends StatelessWidget {
  final Contatct contact;
  const ContactElement({required this.contact, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Pfp(letter: contact.userName[0], userState: contact.state),
              SizedBox(width: 10),
              ContactInfoAndMsgs(
                userName: contact.userName,
                lastMsg: contact.msgs.length > 0
                    ? contact.msgs[contact.msgs.length - 1]
                    : Msg(txt: "Say Hi", time: "", isUser: true),
              ),
              Expanded(
                child: UnreadMsgsCountAndMsgTime(
                  msgs: contact.msgs,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
