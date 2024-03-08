import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/constant/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../core/shared/app_image.dart';
import '../../../core/shared/custom_button_widget.dart';
import '../../../core/shared/custom_text.dart';
import '../../../generated/assets.dart';
import '../../widget/auth/form_widgetl.dart';
import '../home/home_screen.dart';

class CompleteRegistrationScreen extends StatelessWidget {
  const CompleteRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              80.verticalSpace,
              20.verticalSpace,
              AppImage.asset(
                Assets.imagesRegisterImgage,
                fit: BoxFit.fill,
              ),
              const CustomFormWidget(labelText: "Bank name"),
              const CustomFormWidget(labelText: "Bank Holder's Name"),
              const CustomFormWidget(
                labelText: "Account number",
              ),
              const CustomFormWidget(
                labelText: "Phone number",
              ),
              40.verticalSpace,
              CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoute.navigation);
                },
                textButton: "Login",
              ),
              55.verticalSpace,
              TextButton(
                onPressed: () {
                  Get.toNamed(AppRoute.navigation);
                },
                child: CustomText(
                  txt: "Skip for now >",
                  txtColor: ColorManager.grey,
                ),
              )
            ],
          ),
        ));
  }
}
