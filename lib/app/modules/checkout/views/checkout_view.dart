import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/widget/card_checkout_items.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/utils/theme.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
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
            "Checkout Details",
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

    Widget content() {
      return Container(
        width: double.infinity,
        color: primaryColor,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "List Produk",
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: secondaryColor,
              ),
            ),
            const SizedBox(
              height: 17.0,
            ),
            CardCheckoutItems(),
            CardCheckoutItems(),
            const SizedBox(
              height: 18.0,
            ),
            Container(
              // height: 100,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                border: Border.all(
                  color: greyColor,
                  width: 2,
                  strokeAlign: StrokeAlign.outside,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address Details",
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ic_location_store.png",
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Store Location",
                              style: GoogleFonts.roboto(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Mana Aja Deh",
                              style: GoogleFonts.roboto(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/ic_line.png",
                    height: 40,
                    width: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ic_location_user.png",
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Address",
                              style: GoogleFonts.roboto(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Pontianak",
                              style: GoogleFonts.roboto(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                border: Border.all(
                  color: greyColor,
                  width: 2,
                  strokeAlign: StrokeAlign.outside,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Summary",
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Quantity",
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        "1 Produk",
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Price",
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        "\$57,15",
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping",
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        "Free",
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: secondaryColor,
                    height: 2,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        "\$57,15",
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomNavigationBar() {
      return Container(
        height: 50,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 20,
          top: 20,
        ),
        child: TextButton(
          onPressed: () {
            Get.toNamed(Routes.CHECKOUT_SUCCESS);
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
          child: Text(
            "Continue to Checkout",
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }
}
