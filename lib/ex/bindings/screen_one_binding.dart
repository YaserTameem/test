import 'package:get/get.dart';
import 'package:test222/ex/controller/user_controller.dart';

class ScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put( UserController());
  }
}
