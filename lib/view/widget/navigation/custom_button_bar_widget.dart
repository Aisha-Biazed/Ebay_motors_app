import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';

class ButtonBarWidget extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icondata;
  final bool? active;
  const ButtonBarWidget(
      {Key? key,
      required this.icondata,
      required this.onPressed,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 70.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(200.r)),
        color: active == true ? ColorManager.grey : Colors.transparent,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(icondata,
              color: active == true ? ColorManager.primary : ColorManager.grey),
        ]),
      ),
    );
  }
}
