import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/home/home_page.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        home: HomePage(title: ''),
        theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color(0xff4CAF50),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}
