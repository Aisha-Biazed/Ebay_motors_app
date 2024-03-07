import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        txt: title,
        txtColor: ColorManager.grey,
        fontSize: 30.sp,
      ),
      centerTitle: true, // Center the title
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
