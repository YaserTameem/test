import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test222/ex/screen/screen_tow_controller.dart';

class ScreenTwo extends GetView<ScreenTowController> {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: controller.nameController),
          TextField(controller: controller.emailController),
          ElevatedButton(
            onPressed: () {
              controller.updateNameAndEmail();
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
