import 'package:ebay_motors/view/screen/auth/complete_registration_screen.dart';
import 'package:ebay_motors/view/screen/auth/login_screen.dart';
import 'package:ebay_motors/view/screen/auth/register_screen.dart';
import 'package:ebay_motors/view/screen/cart/cart_screen.dart';
import 'package:ebay_motors/view/screen/filter/filter_screen.dart';
import 'package:ebay_motors/view/screen/home/car_details_screen.dart';
import 'package:ebay_motors/view/screen/home/home_screen.dart';
import 'package:ebay_motors/view/screen/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'core/constant/router/routes.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  //Splash
  GetPage(name: AppRoute.splash, page: () => const SplashScreen()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.register, page: () => const RegisterScreen()),
  GetPage(
      name: AppRoute.completeRegister,
      page: () => const CompleteRegistrationScreen()),
  //Cart
  GetPage(name: AppRoute.cart, page: () => const CartScreen()),
//Filter
  GetPage(name: AppRoute.filter, page: () => const FilterScreen()),
  //Home
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(name: AppRoute.carDetails, page: () => const CarDetailsScreen()),
];
