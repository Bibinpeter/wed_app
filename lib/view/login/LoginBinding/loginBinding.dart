import 'package:get/get.dart';

import '../Logincontroller/logincontroller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
