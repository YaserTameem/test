import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test222/ex/controller/user_controller.dart';

class ScreenTowController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController nameController;
  final userController = Get.find<UserController>();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    nameController = TextEditingController();
  }

  void updateNameAndEmail() {
    userController.updateData(nameController.text, emailController.text);
    Get.snackbar('succes', 'Doneeeeeeeeeeeeeeeeeee');
    Get.back();
  }

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    super.onClose();
  }
}
