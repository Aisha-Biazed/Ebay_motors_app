import 'package:ebay_motors/binding/car_details_binding.dart';
import 'package:ebay_motors/binding/splahs_binding.dart';
import 'package:ebay_motors/core/shared/navigation_screen.dart';
import 'package:ebay_motors/model/car_details_model.dart';
import 'package:ebay_motors/view/screen/auth/complete_registration_screen.dart';
import 'package:ebay_motors/view/screen/auth/login_screen.dart';
import 'package:ebay_motors/view/screen/auth/register_screen.dart';
import 'package:ebay_motors/view/screen/cart/cart_screen.dart';
import 'package:ebay_motors/view/screen/filter/filter_screen.dart';
import 'package:ebay_motors/view/screen/home/car_details_screen.dart';
import 'package:ebay_motors/view/screen/home/home_screen.dart';
import 'package:ebay_motors/view/screen/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../../../binding/filter_binding.dart';
import 'app_routes.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),

  //Splash
  GetPage(
      name: AppRoute.splash,
      page: () => SplashScreen(),
      binding: SplashBinding()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.register, page: () => RegisterScreen()),
  GetPage(
      name: AppRoute.completeRegister,
      page: () => const CompleteRegistrationScreen()),
  //Cart
  GetPage(
    name: AppRoute.cartScreen,
    page: () => const CartScreen(),
  ),
//Filter
  GetPage(
      name: AppRoute.filter,
      page: () => FilterScreen(),
      binding: FilterBindings()),
  //Home
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(
      name: AppRoute.carDetails,
      arguments: {"title": null, "subTitle": null, "img": null},
      page: () => CarDetailsScreen(),
      binding: CarDetialsBindings()),
  //Navigation
  GetPage(name: AppRoute.navigation, page: () => const NavigationScreen()),
];
