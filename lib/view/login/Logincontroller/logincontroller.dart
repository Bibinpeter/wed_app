import 'dart:async';

import 'package:get/get.dart';

class LoginController extends GetxController {
  final RxInt currentPage = 0.obs;
  Timer? _timer;

  final List<String> imagePaths = [
     'assets/images/loginpic_three.jpg',
     'assets/images/loginpic_two.jpg',
     'assets/images/login_onee.jpg',
     'assets/images/login_four.jpg'
  ];

  @override
  void onInit() {
    super.onInit();
    startImageLoop();
  }

  void startImageLoop() {
    
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      currentPage.value = (currentPage.value + 1) % imagePaths.length;
    });
  }

  @override
  void onClose() {
    _timer?.cancel();  
    super.onClose();
  }
}
