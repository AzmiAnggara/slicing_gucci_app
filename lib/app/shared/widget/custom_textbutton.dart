import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/app_pages.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {super.key,
      required this.bgColor,
      required this.textColor,
      required this.onTap,
      required this.title});

  Color bgColor;
  Color textColor;
  String title;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: (() => onTap()),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.black),
            ),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
