import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/shared/app_image.dart';
import '../generated/assets.dart';

class CarDetailsController extends GetxController {
  final RxString title = ''.obs;
  final RxString subTitle = ''.obs;
  final RxString img = ''.obs;
  final imageAssets = [
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
  ].obs;
  final pages = <Container>[].obs;

  @override
  void onInit() {
    super.onInit();
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    title.value = arguments['title'] ?? '';
    subTitle.value = arguments['subTitle'] ?? '';
    img.value = arguments['img'] ?? '';

    pages.value = List.generate(
      imageAssets.length,
      (index) => Container(
        margin: EdgeInsetsDirectional.only(start: 10),
        child: Center(
          child: AppImage.asset(
            imageAssets[0],
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
