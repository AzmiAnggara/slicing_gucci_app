import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/theme.dart';

class EmptyScreen extends StatelessWidget {
  EmptyScreen({
    super.key,
    required this.images,
    required this.title,
    required this.subTitle,
  });

  String images;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            images,
            height: 80,
            width: 80,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: secondaryColor,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            subTitle,
            style: GoogleFonts.roboto(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: secondaryColor,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: secondaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                )),
            child: Text(
              "Explore Store",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
