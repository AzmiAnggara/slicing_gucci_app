import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextForm extends StatelessWidget {
  CustomTextForm({
    super.key,
    required this.title,
    required this.hintText,
    required this.textController,
    required this.icon,
    this.isEmail = false,
    this.isNumber = false,
    this.isPassword = false,
  });

  String title;
  TextEditingController textController;
  String hintText;
  IconData icon;
  bool isEmail;
  bool isNumber;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    validateEmail(String? value) {
      String pattern =
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?)*$";
      RegExp regex = RegExp(pattern);

      if (value!.isEmpty) {
        // isCheck = false;
        // print("ini Value Controller : ${value}");
        // print(isCheck);
        return "Make sure u input data here";
      }
      if (!regex.hasMatch(value)) {
        return 'Enter a valid email address';
        // isCheck = false;
      } else {
        null;
        // isCheck = true;
        // print(isCheck);
      }
    }

    validateText(String? value) {
      if (value!.isEmpty) {
        return "Jangan Kosong";
      } else {
        null;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          controller: textController,
          validator: (value) =>
              isEmail ? validateEmail(value) : validateText(value),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: isNumber ? TextInputType.number : TextInputType.text,
          obscureText: isPassword ? true : false,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              // borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(
              icon,
              color: Colors.black,
              size: 24,
            ),
            suffixIcon: Icon(
              Icons.check,
              color: Colors.transparent,
              size: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
