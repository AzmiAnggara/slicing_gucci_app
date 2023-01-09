import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_gucci/app/routes/app_pages.dart';
import 'package:slicing_gucci/app/shared/utils/theme.dart';
import 'package:slicing_gucci/app/shared/widget/custom_textform.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: 24.0,
            color: secondaryColor,
          ),
        ),
        title: Text(
          "Edit Profile",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: const Icon(
              Icons.check,
              size: 24.0,
              color: Colors.green,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          const SizedBox(
            height: 30.0,
          ),
          CircleAvatar(
            maxRadius: 50,
            child: Image.asset("assets/images/avatar.png"),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomTextForm(
            title: "Name",
            hintText: "Azmi Anggara Darmawansyah",
            icon: Icons.perm_identity,
            textController: controller.cName,
          ),
          CustomTextForm(
            title: "Username",
            hintText: "@azmiadd",
            icon: Icons.person,
            textController: controller.cUserName,
          ),
          CustomTextForm(
            title: "Email Addres",
            hintText: "azmianggara53@gmail.com",
            icon: Icons.email,
            textController: controller.cEmail,
            isEmail: true,
          ),
          CustomTextForm(
            title: "Phone Number",
            hintText: "+629612846681",
            icon: Icons.numbers,
            textController: controller.cUserName,
            isNumber: true,
          ),
        ],
      ),
    );
  }
}
