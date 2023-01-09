import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';

import '../utils/theme.dart';

class ItemsMenu extends StatelessWidget {
  ItemsMenu({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
              color: secondaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.EDIT_PROFILE);
            },
            child: Icon(
              Icons.arrow_forward,
              size: 17.0,
              color: secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
