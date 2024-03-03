import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/app_image.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/assets.dart';
import '../../widget/up_logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const UPLogoWidget(),
          const Spacer(),
          CustomText(
            txt: "Welcome...!",
            fontSize: 30.sp,
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 400.h,
            decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(220.r),
                    topRight: Radius.circular(220.r))),
          ),
        ],
      ),
    );
  }
}
