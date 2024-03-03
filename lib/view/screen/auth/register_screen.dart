import 'package:ebay_motors/core/shared/app_image.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/generated/assets.dart';
import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/view/screen/auth/complete_registration_screen.dart';
import 'package:ebay_motors/view/widget/auth/form_widgetl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          50.verticalSpace,
          CustomText(
            txt: "Create your account",
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
          ),
          20.verticalSpace,
          AppImage.asset(
            Assets.imagesRegisterImgage,
            fit: BoxFit.fill,
          ),
          const CustomFormWidget(labelText: "Full name*"),
          const CustomFormWidget(
            labelText: "Birthday",
            suffix: Icon(Icons.calendar_month_outlined),
          ),
          const CustomFormWidget(
            labelText: "Email*",
          ),
          const CustomFormWidget(
            labelText: "Password*",
            suffix: Icon(Icons.visibility),
          ),
          const CustomFormWidget(
            labelText: "Confirm password*",
            suffix: Icon(Icons.visibility),
          ),
          CustomButton(
            onPressed: () {
              Get.to(() => CompleteRegistrationScreen());
            },
            textButton: "Next",
          ),
        ],
      ),
    ));
  }
}
