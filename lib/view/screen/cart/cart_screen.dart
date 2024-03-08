import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/app_image.dart';
import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/shared/custom_appbar_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
      ),
      body: Container(
        margin:
            REdgeInsetsDirectional.only(start: 28.w, end: 28.w, bottom: 15.h),
        height: 390.h,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorManager.grey)),
        child: Padding(
          padding:
              REdgeInsetsDirectional.only(start: 15.w, end: 17.w, top: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                      title: "",
                      confirm:
                          CustomButton(textButton: "Yes", onPressed: () {}),
                      cancel: CustomButton(
                        textButton: "No",
                        onPressed: () {},
                        coloButton: ColorManager.onSurfaceVariant,
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppImage.asset(
                            Assets.imagesWarningIcon,
                            width: 100.w,
                            height: 100.h,
                          ),
                          30.verticalSpace,
                          CustomText(
                            txt: "Are you sure to cancel order?",
                            txtColor: ColorManager.grey,
                            fontSize: 17.sp,
                          ),
                          20.verticalSpace
                        ],
                      ));
                },
                child: Container(
                  width: 120.w,
                  margin: REdgeInsetsDirectional.only(start: 355, top: 0),
                  decoration: BoxDecoration(
                      color: ColorManager.primary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: Icon(Icons.cancel_outlined),
                ),
              ),
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
    );
  }
}
