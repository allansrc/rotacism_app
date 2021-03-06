import 'package:get/get.dart';
import 'package:rotacism_app/app/home/home_page.dart';
import 'package:rotacism_app/app/memory_game/memo_g_page.dart';
import 'package:rotacism_app/app/word_complete/word_complete_page.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.initial, page: () => HomePage()),
    GetPage(name: AppRoutes.memog, page: () => MemoGPage()),
    GetPage(name: AppRoutes.wordcomp, page: () => WordCompletePage()),
  ];
}
