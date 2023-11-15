import 'package:get/get.dart';
import 'package:nutridunite/app/View/home_page.dart';
import 'app_route.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
  ];
}
