import 'package:flutter/material.dart';

import '../../../core/shared/app_image.dart';
import '../../../core/shared/custom_text.dart';
import '../../../generated/assets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {Key? key,
      required this.title,
      required this.subTile,
      required this.img,
      required this.onTap})
      : super(key: key);
  final String title;
  final String subTile;
  final String img;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: AppImage.asset(
        img,
        fit: BoxFit.contain,
      ),
      title: CustomText(
        txt: title,
      ),
      subtitle: CustomText(
        txt: subTile,
      ),
    );
  }
}
