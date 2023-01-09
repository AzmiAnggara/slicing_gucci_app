import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/theme.dart';

class CardWishlish extends StatelessWidget {
  const CardWishlish({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 10, right: 20, bottom: 10),
      margin: EdgeInsets.only(bottom: 20),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            child: Image.asset(
              "assets/images/new_product/new_items3.png",
              height: 60,
              width: 60,
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
                  "Gucci Winter Bag",
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "\143,98",
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/button_wishlish_on.png",
            height: 34,
            width: 34,
          )
        ],
      ),
    );
  }
}
