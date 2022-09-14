import 'package:connectify/models/contact.dart';
import 'package:connectify/models/msg.dart';
import 'package:connectify/models/state.dart';
import 'package:connectify/models/user.dart';

List<Msg> taki_msgs = [
  Msg(
      txt: "You're not cute enough",
      time: "12:00 am",
      isUser: true,
      isRead: true),
  Msg(
      txt: "U haven't seen me yat",
      time: "12:00 am",
      isUser: false,
      isRead: true),
  Msg(
      txt: "Sorry man cant simp for naruto fans",
      time: "12:00 am",
      isUser: false,
      isRead: true),
  Msg(
      txt: "Guys i expect that you know tekken 3??",
      time: "12:00 am",
      isUser: true,
      isRead: true),
  Msg(
      txt: "When you kill someone in tekken",
      time: "12:00 am",
      isUser: true,
      isRead: true),
  Msg(txt: "They write @K_o", time: "12:00 am", isUser: true, isRead: true),
  Msg(txt: "They do??", time: "12:00 am", isUser: false, isRead: true),
  Msg(txt: "Hhhhhh nice", time: "12:00 am", isUser: true, isRead: true),
  Msg(txt: "Word play", time: "12:00 am", isUser: false, isRead: true),
  Msg(
      txt: "I think that it is cringe , Isn't it?",
      time: "12:00 am",
      isUser: false,
      isRead: true),
];
List<Msg> ahemed_msgs = [];
List<Msg> john_msgs = [
  Msg(txt: "mate we out?", time: "6:00 pm", isUser: false, isRead: true)
];

List<Contatct> placeholder_contacts = [
  Contatct(userName: "Losser69", msgs: taki_msgs),
  Contatct(
      userName: "Commander FlipFlop",
      msgs: ahemed_msgs,
      state: UserState.UnActive),
  Contatct(userName: "John Doe", msgs: john_msgs, state: UserState.DontTalk),
  Contatct(userName: "Losser69", msgs: taki_msgs),
  Contatct(
      userName: "Commander FlipFlop",
      msgs: ahemed_msgs,
      state: UserState.UnActive),
  Contatct(userName: "John Doe", msgs: john_msgs, state: UserState.DontTalk),
  Contatct(userName: "Losser69", msgs: taki_msgs),
  Contatct(
      userName: "Commander FlipFlop",
      msgs: ahemed_msgs,
      state: UserState.UnActive),
  Contatct(userName: "John Doe", msgs: john_msgs, state: UserState.DontTalk),
  Contatct(userName: "Losser69", msgs: taki_msgs),
  Contatct(
      userName: "Commander FlipFlop",
      msgs: ahemed_msgs,
      state: UserState.UnActive),
  Contatct(userName: "John Doe", msgs: john_msgs, state: UserState.DontTalk),
];
