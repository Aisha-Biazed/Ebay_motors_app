import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/constant/router/app_routes.dart';
import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/view/screen/auth/register_screen.dart';
import 'package:ebay_motors/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/shared/app_image.dart';
import '../../../generated/assets.dart';
import '../../widget/auth/form_widgetl.dart';
import '../../widget/up_logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          UPLogoWidget(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  txt: 'Ebay motors ',
                  txtColor: ColorManager.dark,
                  fontWeight: FontWeight.w700,
                  fontSize: 50.sp,
                ),
                CustomText(
                  txt: 'Driving you to your  ',
                  txtColor: ColorManager.dark,
                  fontSize: 30.sp,
                ),
                CustomText(
                  txt: 'dream car!',
                  txtColor: ColorManager.dark,
                  fontSize: 30.sp,
                ),
              ],
            ),
          ),
          const CustomFormWidget(
            labelText: "Email",
          ),
          const CustomFormWidget(
            labelText: "Password",
            suffix: Icon(Icons.visibility),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  textButton: "Login",
                  onPressed: () {
                    Get.toNamed(AppRoute.register);
                  }),
              const CustomText(
                txt: "Forget password?",
              ),
              45.verticalSpace,
              const CustomText(txt: "don't you have account?"),
              10.verticalSpace,
              const CustomText(txt: "Sign up")
            ],
          )
        ],
      ),
    );
  }
}
