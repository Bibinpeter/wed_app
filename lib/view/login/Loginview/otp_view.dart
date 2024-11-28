import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:wedapp/routes/routes.dart';
import 'package:wedapp/view/login/Logincontroller/otpcontroller.dart';
import 'package:wedapp/widgets/Customtextformfield/customtextformfield.dart';

class OTPView extends StatelessWidget {
  final OTPController controller = Get.put(OTPController());

  OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background White
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Heading Text
                  Text(
                    "Verify your Phone Number",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Enter your phone number to receive the OTP.",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 140),

                  FadeInRight(
                    child: CustomTextFormField(
                      onChanged: (value) => controller.phoneNumber.value = value,
                      hintText: 'Enter your phone number',
                      hintstyle: GoogleFonts.poppins(
                          color: Colors.white60, fontSize: 20),
                      style: GoogleFonts.poppins(color: Colors.white),
                      prefixIcon:
                          const Icon(Icons.mobile_friendly, color: Colors.white),
                      type: TextInputType.number,
                    ),
                  ),
                

                  // Send OTP Button
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: FadeInLeft(
                      child: PrettySlideIconButton(
                        labelStyle: GoogleFonts.poppins(color: Colors.white),
                        foregroundColor: Colors.white,
                        icon: Icons.arrow_forward,
                        label: "Verify and Get OTP",
                        onPressed: () {
                          controller.sendOTP();
                          Future.delayed(const Duration(seconds: 2), () {
                            Get.toNamed(AppRoutes.verifyOTP); 
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 140),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
