import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.CHAT_DETAIL);
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/avatar.png",
                  height: 55,
                  width: 55,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Angga",
                        style: GoogleFonts.roboto(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        "Good night, This item is on...",
                        style: GoogleFonts.roboto(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w200,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: GoogleFonts.roboto(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
