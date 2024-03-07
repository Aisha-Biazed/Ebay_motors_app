import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared/custom_appbar_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Settings',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(
                  Icons.person_2_outlined,
                  size: 24.w,
                ),
                title: CustomText(
                  txt: "",
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 24.w,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.lock_outline_rounded,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
                title: CustomText(
                  txt: "",
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 24.w,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  size: 24.w,
                ),
                title: CustomText(
                  txt: "ddag",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone_in_talk_outlined,
                  size: 24.w,
                ),
                title: CustomText(
                  txt: "ggg",
                ),
              ),
              200.verticalSpace,
              ListTile(
                leading: Icon(
                  Icons.login_outlined,
                  size: 24.w,
                  // color: context.colorScheme.onPrimaryContainer,
                ),
                title: CustomText(
                  txt: "ddd",
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
