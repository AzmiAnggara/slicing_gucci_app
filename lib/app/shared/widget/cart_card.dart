import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 110,
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 30,
      ),
      padding: EdgeInsets.only(left: 12, right: 12, top: 10),
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
        children: [
          Row(
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
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/ic_add.png",
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    "2",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/ic_min.png",
                      width: 16,
                      height: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  "assets/images/ic_remove.png",
                  width: 12,
                  height: 12,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  "Remove",
                  style: GoogleFonts.roboto(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
