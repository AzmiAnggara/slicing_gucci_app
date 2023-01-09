import 'package:get/get.dart';

import 'package:slicing_gucci/app/modules/cart/bindings/cart_binding.dart';
import 'package:slicing_gucci/app/modules/cart/views/cart_view.dart';
import 'package:slicing_gucci/app/modules/chat/bindings/chat_binding.dart';
import 'package:slicing_gucci/app/modules/chat/views/chat_view.dart';
import 'package:slicing_gucci/app/modules/chat_detail/bindings/chat_detail_binding.dart';
import 'package:slicing_gucci/app/modules/chat_detail/views/chat_detail_view.dart';
import 'package:slicing_gucci/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:slicing_gucci/app/modules/checkout/views/checkout_view.dart';
import 'package:slicing_gucci/app/modules/checkout_success/bindings/checkout_success_binding.dart';
import 'package:slicing_gucci/app/modules/checkout_success/views/checkout_success_view.dart';
import 'package:slicing_gucci/app/modules/detail_produk/bindings/detail_produk_binding.dart';
import 'package:slicing_gucci/app/modules/detail_produk/views/detail_produk_view.dart';
import 'package:slicing_gucci/app/modules/edit_profile/bindings/edit_profile_binding.dart';
import 'package:slicing_gucci/app/modules/edit_profile/views/edit_profile_view.dart';
import 'package:slicing_gucci/app/modules/home/bindings/home_binding.dart';
import 'package:slicing_gucci/app/modules/home/views/home_view.dart';
import 'package:slicing_gucci/app/modules/main/bindings/main_binding.dart';
import 'package:slicing_gucci/app/modules/main/views/main_view.dart';
import 'package:slicing_gucci/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:slicing_gucci/app/modules/onboarding/views/onboarding_view.dart';
import 'package:slicing_gucci/app/modules/profile/bindings/profile_binding.dart';
import 'package:slicing_gucci/app/modules/profile/views/profile_view.dart';
import 'package:slicing_gucci/app/modules/signin/bindings/signin_binding.dart';
import 'package:slicing_gucci/app/modules/signin/views/signin_view.dart';
import 'package:slicing_gucci/app/modules/signup/bindings/signup_binding.dart';
import 'package:slicing_gucci/app/modules/signup/views/signup_view.dart';
import 'package:slicing_gucci/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:slicing_gucci/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:slicing_gucci/app/modules/wishlish/bindings/wishlish_binding.dart';
import 'package:slicing_gucci/app/modules/wishlish/views/wishlish_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.WISHLISH,
      page: () => WishlishView(),
      binding: WishlishBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_DETAIL,
      page: () => ChatDetailView(),
      binding: ChatDetailBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT_SUCCESS,
      page: () => CheckoutSuccessView(),
      binding: CheckoutSuccessBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUK,
      page: () => DetailProdukView(),
      binding: DetailProdukBinding(),
    ),
  ];
}
