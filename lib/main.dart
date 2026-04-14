import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test222/core/routing/app_pages.dart';
import 'package:test222/core/routing/app_routes.dart';
import 'package:test222/ex/controller/user_controller.dart';
import 'package:test222/ex/screen/screen_tow_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Get.put( UserController());
  Get.put(ScreenTowController());

  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.one,
            getPages: AppPages.routes,
          );
      },
    );
  }
}
