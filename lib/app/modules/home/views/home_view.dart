import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/list_items_category.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final PageController pageController = PageController();

  List listPaths = [
    "assets/images/carousel_item.png",
    "assets/images/carousel_item.png",
    "assets/images/carousel_item.png",
    "assets/images/carousel_item.png",
    "assets/images/carousel_item.png",
  ];

  final List listCategories = [
    {'icon': "assets/images/icon_cloath.png", 'label': 'Cloathes'},
    {'icon': "assets/images/icon_heels.png", 'label': 'Shoes'},
    {'icon': "assets/images/icon_bag.png", 'label': 'Bag'},
    {'icon': "assets/images/icon_watch.png", 'label': 'Watch'},
    {'icon': "assets/images/icon_makeup.png", 'label': 'Jawelery'},
  ];

  final List listNewArrival = [
    {
      'images': "assets/images/new_product/new_items1.png",
      'label': 'Clothes',
      'title': 'Gucci Limited S7',
      'price': '\$68,47'
    },
    {
      'images': "assets/images/new_product/new_items2.png",
      'label': 'Shoes',
      'title': 'Gucci Spring',
      'price': '\$285,73'
    },
    {
      'images': "assets/images/new_product/new_items3.png",
      'label': 'Bags',
      'title': 'Gucci Winter Bag',
      'price': '\$57,15'
    },
    {
      'images': "assets/images/new_product/new_items4.png",
      'label': 'Watch',
      'title': 'Gucci Watch Man',
      'price': '\$92,47'
    },
  ];

  Widget indicator(int index) {
    return Container(
      width: controller.currentIndex.value == index ? 16 : 4,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: controller.currentIndex.value == index
              ? primaryColor
              : Color(0xffC4C4C4)),
    );
  }

  @override
  Widget build(BuildContext context) {
    int indexHome = 0;
    return ListView(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: [
              Container(
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     width: 2,
                //     color: Colors.black,
                //   ),
                //   shape: BoxShape.circle,
                // ),
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    width: 54,
                    height: 54,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, shoppies!",
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Azmi Anggara",
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/icon_love.png",
                width: 25,
              ),
              const SizedBox(
                width: 15.0,
              ),
              Image.asset(
                "assets/images/icon_notif.png",
                width: 25,
              ),
              const SizedBox(
                width: 25.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Special Offers",
            style: GoogleFonts.roboto(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        // CarouselSlider(
        //     items: listPaths
        //         .map(
        //           (image) => Image.asset(
        //             "assets/images/carousel_item.png",
        //             width: MediaQuery.of(context).size.width,
        //             height: 310,
        //             fit: BoxFit.contain,
        //           ),
        //         )
        //         .toList(),
        //     options: CarouselOptions(
        //         initialPage: 0,
        //         onPageChanged: (index, reason) {
        //           controller.currentIndex.value = index;
        //         })),
        // SizedBox(
        //   height: 20,
        // ),
        // Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: listPaths.map((e) {
        //       indexHome++;
        //       print("Current Index Awl =  ${controller.currentIndex.value}");
        //       print("Current Current =  ${indexHome}");

        //       return indicator(indexHome);
        //     }).toList()),
        CarouselSlider.builder(
          itemCount: listPaths.length,
          options: CarouselOptions(
              viewportFraction: 0.85,
              onPageChanged: (index, reason) {
                controller.currentIndex.value = index;

                // print("Current Index Awl =  ${controller.currentIndex.value}");
              },
              autoPlay: true),
          itemBuilder: (context, index, realIndex) {
            var images = listPaths[index];
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_PRODUK);
                  },
                  child: Container(
                    height: 175,
                    width: 335,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(images),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: listPaths.map((url) {
                //     int indexx = listPaths.indexOf(url);
                //     indexx++;
                //     print("index : ${indexx} ");
                //     print(
                //         "current index now = ${controller.currentIndex.value}");

                //     return Obx(
                //       () => Container(
                //         width: 8.0,
                //         height: 8.0,
                //         margin: EdgeInsets.symmetric(
                //             vertical: 10.0, horizontal: 2.0),
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: controller.currentIndex.value == indexx
                //               ? Colors.black
                //               : Colors.white,
                //         ),
                //       ),
                //     );
                //   }).toList(),
                // )
              ],
            );
          },
        ),
        const SizedBox(
          height: 2.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Wrap(
            spacing: 38,
            runSpacing: 17,
            children: listCategories.map((e) {
              print(e["icon"]);
              return Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    child: Image.asset(
                      e["icon"],
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    e["label"],
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            // physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ListItemsCategory(
                  onSelect: true,
                  title: "All Produk",
                ),
                ListItemsCategory(
                  onSelect: false,
                  title: "Clothes",
                ),
                ListItemsCategory(
                  onSelect: false,
                  title: "Shoes",
                ),
                ListItemsCategory(
                  onSelect: false,
                  title: "Bag",
                ),
                ListItemsCategory(
                  onSelect: false,
                  title: "Watch",
                ),
                ListItemsCategory(
                  onSelect: false,
                  title: "Jawelery",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Popular Products",
            style: GoogleFonts.roboto(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),

        SizedBox(
          height: 287,
          width: 215,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 287,
                    width: 215,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/populer_images.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 287,
                    width: 215,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black,
                              Colors.transparent.withOpacity(0.1),
                            ],
                            stops: [
                              0.0,
                              1.0
                            ])),
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 40.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Clothes",
                          style: GoogleFonts.roboto(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Gucci S7",
                          style: GoogleFonts.roboto(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "\$143,98",
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "New Arrivals",
            style: GoogleFonts.roboto(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ListView.builder(
          itemCount: listNewArrival.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            var images = listNewArrival[index]["images"];
            var label = listNewArrival[index]["label"];
            var title = listNewArrival[index]["title"];
            var price = listNewArrival[index]["price"];
            return Container(
              padding: EdgeInsets.only(
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      images,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          style: GoogleFonts.roboto(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          title,
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          price,
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
