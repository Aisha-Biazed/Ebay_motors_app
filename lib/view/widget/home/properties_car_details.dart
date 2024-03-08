import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/custom_text.dart';

class PropertiesDetailsCar extends StatelessWidget {
  const PropertiesDetailsCar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          txt: "Model",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Launch year",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Company",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Price",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "C/D RATING",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Car engine",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Car engine",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Horsepower",
          txtColor: ColorManager.grey,
        ),
        10.verticalSpace,
        CustomText(
          txt: "Battery",
          txtColor: ColorManager.grey,
        ),
      ],
    );
  }
}
