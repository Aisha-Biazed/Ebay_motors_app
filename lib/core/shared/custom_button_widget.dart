import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color_scheme/color_manger.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final void Function() onPressed;
  final Color? coloButton;
  CustomButton({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.coloButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 0.w, vertical: 20.h),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromHeight(56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          minimumSize: Size.zero,
          backgroundColor: coloButton ?? ColorManager.primary,
        ),
        onPressed: onPressed,
        child: CustomText(
          txt: textButton,
          txtColor: ColorManager.grey,
        ),
      ).animate().flipV(delay: const Duration(milliseconds: 700)),
    );
  }
}
