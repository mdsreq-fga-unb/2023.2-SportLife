import 'package:get/get.dart';
import 'app_route.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => InitialView(),
      //binding: InitialBinding(),
    ),
}

