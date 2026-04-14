import 'package:get/get.dart';
import 'package:test222/ex/screen/screen_tow_controller.dart';

class ScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ScreenTowController());
  }
}
