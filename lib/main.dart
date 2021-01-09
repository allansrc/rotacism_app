import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotacism_app/app/routes/app_pages.dart';

import 'app/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0xff4CAF50),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      home: HomePage(title: ''),
    );
  }
}
