import 'package:get/get.dart';
import 'package:test222/ex/bindings/ScreenTwoBinding.dart';
import 'package:test222/ex/bindings/screen_one_binding.dart';
import 'package:test222/ex/screen/screen_one.dart';
import 'package:test222/ex/screen/screen_two.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.one,
      page: () => ScreenOne(),
      binding: ScreenOneBinding(),
    ),
    GetPage(
      name: AppRoutes.two,
      page: () => ScreenTwo(),
      binding: ScreenTwoBinding(),
    ),
  ];
}
