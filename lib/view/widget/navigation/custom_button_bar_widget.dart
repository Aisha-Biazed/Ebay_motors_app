import 'package:flutter/material.dart';

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
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(icondata,
            color: active == true ? ColorManager.white : ColorManager.grey),
      ]),
    );
  }
}
