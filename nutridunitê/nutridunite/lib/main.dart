import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutridunite/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Nutri Duni tê',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
