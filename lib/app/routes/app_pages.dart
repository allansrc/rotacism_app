import 'package:get/get.dart';
import 'package:rotacism_app/app/home/home_page.dart';
import 'package:rotacism_app/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.initial, page: () => HomePage()),
  ];
}
