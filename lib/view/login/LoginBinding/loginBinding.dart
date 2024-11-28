import 'package:get/get.dart';
import 'package:wedapp/view/login/Logincontroller/otpcontroller.dart';

import '../Logincontroller/logincontroller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
      Get.lazyPut<OTPController>(() => OTPController());
  }
}
