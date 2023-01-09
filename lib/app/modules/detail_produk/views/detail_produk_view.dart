import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

import '../../../routes/app_pages.dart';
import '../controllers/detail_produk_controller.dart';

class DetailProdukView extends GetView<DetailProdukController> {
  List listPaths = [
    "assets/images/new_product/product1.png",
    "assets/images/new_product/product1.png",
    "assets/images/new_product/product1.png",
    "assets/images/new_product/product1.png",
    "assets/images/new_product/product1.png",
  ];

  List listSimilarProduct = [
    "assets/images/new_product/new_items1.png",
    "assets/images/new_product/new_items2.png",
    "assets/images/new_product/new_items3.png",
    "assets/images/new_product/new_items4.png",
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: listPaths.length,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  // controller.currentIndex.value = index;
                },
                viewportFraction: 1.0,
                height: 350,
              ),
              itemBuilder: (context, index, realIndex) {
                var images = listPaths[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(images),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 45, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      size: 24.0,
                      color: primaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.CART);
                    },
                    child: Icon(
                      Icons.shopping_bag,
                      size: 24.0,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gucci Winter Bag",
                              style: GoogleFonts.roboto(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: secondaryColor,
                              ),
                            ),
                            Text(
                              "Bags",
                              style: GoogleFonts.roboto(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(() {
                        return InkWell(
                          onTap: () {
                            if (controller.isWishlish.value == false) {
                              controller.isWishlish.value = true;
                            } else {
                              controller.isWishlish.value = false;
                            }
                          },
                          child: controller.isWishlish.isTrue
                              ? Image.asset(
                                  "assets/images/button_wishlish_on.png",
                                  height: 46,
                                  width: 46,
                                )
                              : Image.asset(
                                  "assets/images/button_wishlish_off.png",
                                  height: 46,
                                  width: 46,
                                ),
                        );
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price starts from",
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          "\$143,98",
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: secondaryColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Fimiliar Product",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: listSimilarProduct.map((e) {
                      return Container(
                        margin: EdgeInsets.only(right: 14),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          child: Image.asset(
                            e,
                            height: 54,
                            width: 54,
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget customButton() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 20,
          top: 10,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.CHAT_DETAIL);
              },
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Image.asset("assets/images/button_chat.png"),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.MAIN);
                },
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  minimumSize: Size(0, 54),
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
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            header(),
            content(),
          ],
        ),
      ),
      bottomNavigationBar: customButton(),
    );
  }
}
