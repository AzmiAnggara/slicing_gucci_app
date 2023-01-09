import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/cart_card.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  PreferredSizeWidget header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: AppBar(
        backgroundColor: primaryColor,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24.0,
            color: secondaryColor,
          ),
        ),
        title: Text(
          "Your Cart",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget customBottomNavigationBar() {
    return Container(
      height: 150,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SubTotal",
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: secondaryColor,
                  ),
                ),
                Text(
                  "\$287,96",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2,
            color: secondaryColor,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.CHECKOUT);
              },
              style: TextButton.styleFrom(
                backgroundColor: secondaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue to Checkout",
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14.0,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      children: [
        CartCard(),
        CartCard(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }
}
