import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controller/car_details_controller.dart';
import '../../../core/constant/color_scheme/color_manger.dart';

class SliderWidget extends StatelessWidget {
  CarDetailsController controllerDetails = Get.find();
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => SmoothPageIndicator(
          controller: controller,
          count: controllerDetails.pages.length,
          effect: ScrollingDotsEffect(
            paintStyle: PaintingStyle.stroke,
            activeStrokeWidth: 10.w,
            dotColor: ColorManager.primary,
            activeDotColor: ColorManager.primary,
            dotHeight: 10.h,
            dotWidth: 10.w,
          ),
        ));
  }
}
