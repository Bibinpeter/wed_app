import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:pretty_animated_buttons/widgets/pretty_slide_icon_button.dart';
import 'package:wedapp/routes/routes.dart';
import 'package:wedapp/view/login/Logincontroller/otpcontroller.dart';

class VerifyotpView extends StatelessWidget {
  VerifyotpView({Key? key}) : super(key: key);

  final OTPController controller = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("OTP Verification",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Heading Text
            const Text(
              "Verify your Phone Number",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter the OTP sent to your phone.",
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            FadeInLeftBig(
               
              child: Pinput(
                length: 6,
                onChanged: (value) {
                  controller.pinCode.value = value;
                },
                autofocus: true,
                pinAnimationType: PinAnimationType.scale,
              ),
            ),
            const SizedBox(height: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 FadeInRightBig(
                   child: PrettySlideIconButton(
                     labelStyle: GoogleFonts.poppins(color: Colors.white),
                     foregroundColor: Colors.white,
                     icon: Icons.arrow_forward,
                     label: "VERIFY  OTP", 
                     onPressed: () {
                      Get.toNamed(AppRoutes.Bottomnav);
                     },
                   ),
                 ),
                 const SizedBox(height: 30,),
                 GestureDetector(
                  onTap: (){
                    print("Resended otp");
                  },
                   child: Text("RESEND OTP",style: GoogleFonts.poppins(
                    color: Colors.grey
                   ),),
                 )            
              ],
            ),
          ],
        ),
      ),
    );
  }
}
