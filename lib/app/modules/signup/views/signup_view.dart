import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widget/custom_elevatebutton.dart';
import '../../../shared/widget/custom_textbutton.dart';
import '../../../shared/widget/custom_title.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            CustomTitle(title: "Sign Up"),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Enter your name, email and password to register.",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Email',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: controller.emailController,
              validator: (value) =>
                  value == '' ? "Masukkan Password Anda" : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "Masukkan Email Anda",
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  // borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.transparent,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Password',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            TextFormField(
              controller: controller.phoneNoController,
              validator: (value) =>
                  value == '' ? "Masukkan Password Anda" : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "Masukkan Nomor Anda",
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  // borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 24,
                ),
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.transparent,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Password',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            TextFormField(
              controller: controller.passwordController,
              validator: (value) =>
                  value == '' ? "Masukkan Password Anda" : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "Masukkan Password Anda",
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  // borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(
                  Icons.key,
                  color: Colors.black,
                  size: 24,
                ),
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.transparent,
                  size: 24,
                ),
              ),
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
              title: "Sign Up",
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
              title: "Already have an account? Login",
              bgColor: primaryColor,
              textColor: Colors.black,
              onTap: () {
                Get.toNamed(Routes.SIGNIN);
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
              title: "Sign Up With Facebook",
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
              title: "Sign Up With Google",
              icon: Icons.mail,
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "By logging in or registering, you agree to our Terms\nof Service and Privacy.",
              style: GoogleFonts.roboto(
                fontSize: 14.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
