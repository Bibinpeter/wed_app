import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Homepage/Homepage_view/home_view.dart';

class LoginController extends GetxController {
  var employeeNo = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  void login() {
    if (employeeNo.value.isNotEmpty && password.value.isNotEmpty) {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 2), () {
        isLoading.value = false;

        if (employeeNo.value == '12345' && password.value == 'password') {
          Get.snackbar('Login Success', 'Welcome back!',
              backgroundColor: Colors.green,
              snackPosition: SnackPosition.BOTTOM);
          // You can navigate to the next page after successful login:
          Get.to(const HomeView());
        } else {
          Get.snackbar('Login Failed', 'Invalid credentials.',
              backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
        }
      });
    } else {
      Get.snackbar('Validation Error', 'Please enter both fields.',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
