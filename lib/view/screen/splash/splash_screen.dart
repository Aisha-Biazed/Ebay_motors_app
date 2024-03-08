import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/splash_controller.dart';
import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/custom_text.dart';
import '../../widget/up_logo_widget.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const UPLogoWidget()
              .animate()
              .scaleXY(delay: const Duration(milliseconds: 500)),
          const Spacer(),
          GetBuilder<SplashController>(builder: (_controller) {
            return AnimatedBuilder(
              animation: _controller.fadingAnimation,
              builder: (context, _) => Opacity(
                opacity: _controller.animationController.value,
                child: CustomText(
                  txt: "Welcome...!",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 400.h,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(220.r),
                topRight: Radius.circular(220.r),
              ),
            ),
          ).animate().scaleXY(delay: const Duration(milliseconds: 500)),
        ],
      ),
    );
  }
}
