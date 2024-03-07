import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/app_image.dart';
import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared/custom_appbar_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
      ),
      body: Stack(
        children: [
          Positioned(
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  border: Border.all(width: 3, color: ColorManager.primary),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(Icons.cancel_outlined),
              )),
          Container(
            margin: REdgeInsetsDirectional.only(
                start: 28.w, end: 28.w, bottom: 15.h),
            height: 340.h,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: ColorManager.grey)),
            child: Padding(
              padding: REdgeInsetsDirectional.only(
                  start: 15.w, end: 17.w, top: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage.asset(
                    Assets.imagesBMW,
                    width: 90.w,
                    height: 90.h,
                    fit: BoxFit.fill,
                  ),
                  10.verticalSpace,
                  CustomText(
                    txt: "BMW XM 2023 ",
                    txtColor: ColorManager.grey,
                  ),
                  10.verticalSpace,
                  CustomText(
                    txt: "\$159,995",
                    txtColor: ColorManager.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        txt: "Total payment:",
                        txtColor: ColorManager.grey,
                        fontSize: 25.sp,
                      ),
                      CustomText(
                        txt: "\$159,995",
                        txtColor: ColorManager.red,
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomButton(
                          textButton: "Procced to payment", onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
