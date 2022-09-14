import 'package:connectify/pages/contacts_page.dart';
import 'package:connectify/pages/conversation_page.dart';
import 'package:connectify/pages/logging_page.dart';
import 'package:connectify/pages/search_page.dart';
import 'package:get/get.dart';

class RoutManager {
  static const _homeRout = "/";
  static const _contatctsRout = "/contacts-rout";
  static const _conversationRout = "/conversation-rout";
  static const _searchRout = "/search-rout";

  static String get homeRout => _homeRout;
  static String get contatctsRout => _contatctsRout;
  static String get conversationRout => _conversationRout;
  static String get searchRout => _searchRout;

  static List<GetPage> routes = [
    GetPage(name: _homeRout, page: () => const LoggingPage()),
    GetPage(name: _contatctsRout, page: () => const ContactsPage()),
    GetPage(name: _conversationRout, page: () => const ConversationPage()),
    GetPage(name: _searchRout, page: () => const SearchPage()),
  ];
}
