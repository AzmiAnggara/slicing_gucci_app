import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemsCategory extends StatelessWidget {
  ListItemsCategory({super.key, required this.title, required this.onSelect});

  String title;
  bool onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: onSelect == true ? Colors.black : Colors.white,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: onSelect == true ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
