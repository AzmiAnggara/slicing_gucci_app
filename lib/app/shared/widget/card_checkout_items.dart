import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/theme.dart';

class CardCheckoutItems extends StatelessWidget {
  const CardCheckoutItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      margin: EdgeInsets.only(bottom: 12),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            child: Image.asset(
              "assets/images/new_product/new_items3.png",
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  "\$57,15",
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "1 Produk",
            style: GoogleFonts.roboto(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: secondaryColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
