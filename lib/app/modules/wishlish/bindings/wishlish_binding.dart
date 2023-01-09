import 'package:get/get.dart';

import '../controllers/wishlish_controller.dart';

class WishlishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlishController>(
      () => WishlishController(),
    );
  }
}
