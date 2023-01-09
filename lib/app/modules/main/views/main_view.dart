import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slicing_gucci/app/modules/cart/views/cart_view.dart';
import 'package:slicing_gucci/app/modules/chat/views/chat_view.dart';
import 'package:slicing_gucci/app/modules/home/views/home_view.dart';
import 'package:slicing_gucci/app/modules/profile/views/profile_view.dart';
import 'package:slicing_gucci/app/modules/wishlish/views/wishlish_view.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

import '../../../routes/app_pages.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  // int currentIndex = 0;
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {
          Get.toNamed(Routes.CART);
        },
        child: Image.asset(
          'assets/images/icon_nav/cart.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: Container(
            // decoration: BoxDecoration(
            //   color: Colors.transparent,
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.pink,
            //       blurRadius: 10,
            //       // offset: Offset(10, 0),
            //     ),
            //   ],
            // ),
            child: BottomNavigationBar(
                backgroundColor: primaryColor,
                elevation: 10,
                currentIndex: controller.currentIndex.value,
                onTap: (value) {
                  print(value);
                  controller.currentIndex.value = value;
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 0),
                        child: Image.asset(
                          'assets/images/icon_nav/home.png',
                          width: 21,
                          color: controller.currentIndex.value == 0
                              ? Colors.black
                              : Color(0xff9293A8),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 0),
                        child: Image.asset(
                          'assets/images/icon_nav/chat.png',
                          width: 20,
                          color: controller.currentIndex.value == 1
                              ? Colors.black
                              : Color(0xff9293A8),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 0),
                        child: Image.asset(
                          'assets/images/icon_nav/union.png',
                          width: 20,
                          color: controller.currentIndex.value == 2
                              ? Colors.black
                              : Color(0xff9293A8),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 0),
                        child: Image.asset(
                          'assets/images/icon_nav/profile.png',
                          width: 18,
                          color: controller.currentIndex.value == 3
                              ? Colors.black
                              : Color(0xff9293A8),
                        ),
                      ),
                      label: ''),
                ]),
          ),
        ),
      );
    }

    Widget body() {
      switch (controller.currentIndex.value) {
        case 0:
          return HomeView();
          break;
        case 1:
          return ChatView();
          break;
        case 2:
          return WishlishView();
          break;
        case 3:
          return ProfileView();
          break;
        default:
          return HomeView();
      }
    }

    return Obx(() => Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: cardButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customButtonNav(),
        body: body()));
  }
}
