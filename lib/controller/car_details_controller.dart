import 'package:get/get.dart';

import '../generated/assets.dart';

class CarDetailsController extends GetxController {
  final List<String> imageAssets = [
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
  ];
  @override
  void changePage() {
    imageAssets;
    update();
  }
}
