import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test222/ex/controller/user_controller.dart';
import 'package:test222/ex/screen/screen_two.dart';

class ScreenOne extends GetView<UserController> {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.getName.toString(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(
                  controller.getEmail.toString(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ],
            ),

          SizedBox(width: double.infinity),
          ElevatedButton(
            onPressed: () {
              Get.to(ScreenTwo());
            },
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }
}
