import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/animation.dart';

import 'package:ebay_motors/view/screen/auth/login_screen.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);
  }

  @override
  void onReady() {
    super.onReady();
    goToNextView();
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LoginScreen(), transition: Transition.fade);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
