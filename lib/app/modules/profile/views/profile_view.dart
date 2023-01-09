import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/custom_textbutton.dart';
import 'package:slicing_gucci/app/shared/widget/items_menu.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 54,
                  height: 54,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Azmi",
                    style: GoogleFonts.roboto(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "@azmiadd",
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 10, right: 20),
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(
                color: greyColor,
                width: 2,
                strokeAlign: StrokeAlign.outside,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Account",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ItemsMenu(
                  title: "Edit Profile",
                ),
                ItemsMenu(
                  title: "Your Orders",
                ),
                ItemsMenu(
                  title: "Help",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 10, right: 20),
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(
                color: greyColor,
                width: 2,
                strokeAlign: StrokeAlign.outside,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "General",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ItemsMenu(
                  title: "Privacy & Policy",
                ),
                ItemsMenu(
                  title: "Term of Service",
                ),
                ItemsMenu(
                  title: "Rate App",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          CustomTextButton(
            bgColor: Colors.red,
            textColor: secondaryColor,
            onTap: () {},
            title: "Logout",
          ),
        ],
      ),
    );
  }
}
