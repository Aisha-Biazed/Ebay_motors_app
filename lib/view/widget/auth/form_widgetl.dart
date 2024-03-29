import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/custom_text.dart';
import 'custom_text_field.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget(
      {Key? key, required this.labelText, this.suffix, this.hintText})
      : super(key: key);
  final String labelText;
  final String? hintText;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 28.w, end: 28.w, top: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(txt: labelText, txtColor: ColorManager.grey),
          CustomTextField(
            suffixIcon: suffix,
            hintText: hintText,
          ),
        ],
      ),
    );
  }
}
