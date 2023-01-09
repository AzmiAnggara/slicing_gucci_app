import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/custom_elevatebutton.dart';
import 'package:slicing_gucci/app/shared/widget/custom_textbutton.dart';
import 'package:slicing_gucci/app/shared/widget/custom_title.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widget/custom_textform.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              CustomTitle(title: "Sign In"),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Enter your phone number or Email to log in",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomTextForm(
                title: "Emai",
                hintText: "Masukkan Email Anda",
                icon: Icons.email,
                textController: controller.cEmail,
                isEmail: true,
              ),
              CustomTextForm(
                title: "Password",
                hintText: "Masukkan Password Anda",
                icon: Icons.key,
                textController: controller.cPassword,
                isPassword: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Forgot the password?",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextButton(
                title: "Sign In",
                bgColor: secondaryColor,
                textColor: Colors.white,
                onTap: () {
                  Get.offAllNamed(Routes.MAIN);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextButton(
                title: "No account yet? Register now",
                bgColor: primaryColor,
                textColor: Colors.black,
                onTap: () {
                  Get.toNamed(Routes.SIGNUP);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Or",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomElevateButton(
                bgColor: Color(0xff395998),
                title: "Sign In With Facebook",
                icon: Icons.facebook,
                onTap: () {
                  Get.offAllNamed(Routes.HOME);
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomElevateButton(
                bgColor: Color(0xff4285F4),
                title: "Sign In With Google",
                icon: Icons.mail,
                onTap: () {
                  Get.offAllNamed(Routes.HOME);
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  "By logging in or registering, you agree to our Terms\nof Service and Privacy.",
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
