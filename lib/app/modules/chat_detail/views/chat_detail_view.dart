import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/modules/home/controllers/home_controller.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/chat_bubble.dart';

import '../controllers/chat_detail_controller.dart';

class ChatDetailView extends GetView<ChatDetailController> {
  final mainC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 2,
          automaticallyImplyLeading: false,
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
          title: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gucci Store",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    "Online",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/icon_call.png",
                  width: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/icon_video.png",
                    width: 30,
                  ),
                ),
              ),
            ),
          ],
          toolbarHeight: 76,
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                ChatBubble(
                  text: "Hallo",
                  isProduct: true,
                  isSender: true,
                ),
                ChatBubble(
                  text: "Iyaa ?",
                  isSender: false,
                ),
                ChatBubble(
                  text: "Hallo",
                  isProduct: true,
                  isSender: true,
                ),
                ChatBubble(
                  text: "Iyaa ?",
                  isSender: false,
                ),
                ChatBubble(
                  text: "Hallo",
                  isProduct: true,
                  isSender: true,
                ),
                ChatBubble(
                  text: "Iyaa ?",
                  isSender: false,
                ),
                ChatBubble(
                  text: "Hallo",
                  isProduct: true,
                  isSender: true,
                ),
                ChatBubble(
                  text: "Iyaa ?",
                  isSender: false,
                ),
                ChatBubble(
                  text: "Hallo",
                  isProduct: true,
                  isSender: true,
                ),
                ChatBubble(
                  text: "Iyaa ?",
                  isSender: false,
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller.textController,
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: greyColor,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Type Message ..",
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    child: Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 13,
                        bottom: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: secondaryColor,
                      ),
                      child: Image.asset(
                        "assets/images/icon_send.png",
                        height: 16,
                        width: 19,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.textController,
                  decoration: InputDecoration(
                    isDense: true,
                    fillColor: greyColor,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Type Message ..",
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                child: Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 13,
                    bottom: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: secondaryColor,
                  ),
                  child: Image.asset(
                    "assets/images/icon_send.png",
                    height: 16,
                    width: 19,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
      // bottomNavigationBar: chatInput(),
    );
  }
}
