import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/constant/router/app_routes.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SearchBar(
            hintText: 'Search',
            leading: Icon(
              Icons.search_outlined,
              color: ColorManager.grey,
            ),
          ),
        ),
        10.horizontalSpace,
        IconButton(
          icon: Icon(
            Icons.filter_list_alt,
            size: 30,
            color: ColorManager.grey,
          ),
          onPressed: () {
            Get.toNamed(AppRoute.filter);
          },
        ),
      ],
    );
  }
}
