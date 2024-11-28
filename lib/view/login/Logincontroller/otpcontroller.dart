import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  
  var phoneNumber = ''.obs;
  var otp = ''.obs;
  var pinCode = ''.obs;


  void sendOTP() {
    if (phoneNumber.value.isEmpty || phoneNumber.value.length != 10) {
      Get.snackbar(
        "Invalid Phone Number",
        "Please enter a valid 10-digit phone number.",
        colorText: Colors.red,
      );
    } else {
  
      Get.snackbar(
        "OTP Sent",
        "An OTP has been sent to ${phoneNumber.value}.",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

    }
  }

  void verifyOTP() {
    if (otp.value.isEmpty || otp.value.length != 6) {
      Get.snackbar(
        "Invalid OTP",
        "Please enter a valid 6-digit OTP.",
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.white,
      
      );
    } else {
     
      Get.snackbar(
        "OTP Verified",
        "Welcome!",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}
