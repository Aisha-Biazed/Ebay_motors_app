import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    final SplashController _controller = Get.put(SplashController());
  }
}
