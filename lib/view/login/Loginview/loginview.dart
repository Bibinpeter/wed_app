 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Logincontroller/logincontroller.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text("Here we start")
        ),
      ),
    );
  }
}
