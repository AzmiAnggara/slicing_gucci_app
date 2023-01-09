import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

import '../controllers/checkout_success_controller.dart';

class CheckoutSuccessView extends GetView<CheckoutSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 2,
        title: Text(
          "Checkout Success",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/ic_cart.png",
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "You made a transaction",
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Stay at home while we\nprepare your dream shoes",
              style: GoogleFonts.roboto(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: secondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 44,
              width: 210,
              child: TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.MAIN);
                },
                style: TextButton.styleFrom(
                    backgroundColor: secondaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    )),
                child: Text(
                  "Order Other Product",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 44,
              width: 210,
              child: TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.MAIN);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  side: BorderSide(
                    color: secondaryColor,
                  ),
                ),
                child: Text(
                  "View My Order",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
