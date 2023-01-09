import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevateButton extends StatelessWidget {
  CustomElevateButton({
    super.key,
    required this.bgColor,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  Color bgColor;
  String title;
  IconData icon;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() => onTap()),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: bgColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 24.0,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
