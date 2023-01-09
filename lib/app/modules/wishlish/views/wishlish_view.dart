import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/card_wishlish.dart';
import 'package:slicing_gucci/app/shared/widget/empty_screen.dart';

import '../controllers/wishlish_controller.dart';

class WishlishView extends GetView<WishlishController> {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: ListView(
          children: [
            CardWishlish(),
            CardWishlish(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorite Product",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: content(),
      // EmptyScreen(
      //     images: "assets/images/ic_love.png",
      //     title: " You don't have dream Outfit?",
      //     subTitle: "Let's find your favorite Outfit"),
    );
  }
}
