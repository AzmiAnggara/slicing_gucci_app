import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/custom_textbutton.dart';

import '../../../routes/app_pages.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Image.asset(
                "assets/images/onboarding1.png",
                fit: BoxFit.fill,
                height: 495,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'We Provide High Quality\nProducts Jsut For Yoy. ',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: secondaryColor,
                ),
              ),
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: greyColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 46.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextButton(
              title: "Get Started",
              bgColor: secondaryColor,
              textColor: Colors.white,
              onTap: () {
                Get.toNamed(Routes.SIGNIN);
              },
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Text(
            "By logging in or registering, you agree to our\nTerms of Service and Privacy.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
