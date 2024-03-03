import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color_scheme/color_manger.dart';

class UPLogoWidget extends StatelessWidget {
  const UPLogoWidget({Key? key, this.widget}) : super(key: key);
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 400.h,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(250.r),
                bottomRight: Radius.circular(250.r))),
        child: widget);
  }
}
