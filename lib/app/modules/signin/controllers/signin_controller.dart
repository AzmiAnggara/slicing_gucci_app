import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final cEmail = TextEditingController();
  final cPassword = TextEditingController();
  var isCheck = false;

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

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
