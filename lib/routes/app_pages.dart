import 'package:get/get.dart';
import 'package:mart_mandiri_77/ui/screen/home.dart';
import 'package:mart_mandiri_77/ui/screen/login.dart';
import 'package:mart_mandiri_77/ui/screen/register.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.Home,
      page: () => Home(),
    ),
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.Register,
      page: () => RegisterPage(),
    ),
  ];
}
