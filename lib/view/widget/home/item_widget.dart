import 'package:animate_do/animate_do.dart';
import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../core/shared/app_image.dart';
import '../../../core/shared/custom_text.dart';
import '../../../generated/assets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.title,
    required this.subTile,
    required this.img,
    required this.onTap,
    required this.milliseconds,
  }) : super(key: key);
  final String title;
  final String subTile;
  final String img;
  final void Function() onTap;
  final int milliseconds;
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: milliseconds),
      child: Slidable(
        key: const ValueKey(1),
        startActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (BuildContext context) {
                Get.defaultDialog(
                    title: "",
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
                          txt: "This will not be appear any more !",
                          txtColor: ColorManager.grey,
                          fontSize: 17.sp,
                        ),
                        20.verticalSpace
                      ],
                    ));
              },
              icon: Icons.remove_circle_outline,
              label: 'not interested',
            ),
          ],
        ),
        child: ListTile(
          onTap: onTap,
          leading: AppImage.asset(
            img,
            fit: BoxFit.contain,
          ),
          title: CustomText(
            txt: title,
            txtColor: ColorManager.grey,
          ),
          subtitle: CustomText(
            txt: subTile,
            txtColor: ColorManager.grey,
          ),
        ),
      ),
    );
  }
}
