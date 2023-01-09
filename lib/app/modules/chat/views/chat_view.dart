import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/modules/main/controllers/main_controller.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/chat_tile.dart';
import 'package:slicing_gucci/app/shared/widget/empty_screen.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  final mainC = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Message Support",
          style: GoogleFonts.roboto(
            color: secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          // color: primaryColor,
          child:
              // EmptyScreen(
              //   images: "assets/images/ic_heatset.png",
              //   title: "Opss no message yet?",
              //   subTitle: "You have never done a transaction",
              // ),
              ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
