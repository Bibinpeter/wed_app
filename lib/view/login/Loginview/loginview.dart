import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedapp/routes/routes.dart';

import '../Logincontroller/logincontroller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Animated background image
          Obx(() {
            return AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              child: Image.asset(
                controller.imagePaths[controller.currentPage.value],
                key: ValueKey<int>(controller.currentPage.value),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            );
          }),

          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          Positioned(
            left: 20,
            top: MediaQuery.of(context).size.height / 2 + 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  duration: const Duration(seconds: 2),
                  child: Text(
                    "WED  DEMO",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FadeInDown(
                  duration: const Duration(seconds: 2),
                  child: Text(
                    "MAKE YOUR FUNCTION BETTER BEST",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                FadeInDown(
                  duration: const Duration(seconds: 2),
                  child: Text(
                    "BY  CHOOSING PROFETIONAL VENDORS .",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 110,
            right: -16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInRightBig(
                  duration: const Duration(seconds: 2),
                  child: GestureDetector(
                    onTap: (){
                  Get.toNamed(AppRoutes.otp);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                            ),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Row(
                            children: [
                              Animate(
                                child: Text(
                                  "Login Here",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
