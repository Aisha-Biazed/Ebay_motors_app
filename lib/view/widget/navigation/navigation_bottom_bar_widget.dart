import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import 'custom_button_bar_widget.dart';
import '../../../controller/navigation_bar_controller.dart';

class NavigationBottomBarWidget extends StatelessWidget {
  const NavigationBottomBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarControllerImp>(
        builder: (controller) => BottomAppBar(
            color: ColorManager.primary,
            shape: const CircularNotchedRectangle(),
            // notchMargin: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? 10.horizontalSpace
                      : ButtonBarWidget(
                          icondata: controller.bottomappbar[i]['icon'],
                          onPressed: () {
                            controller.changePage(i);
                          },
                          active: controller.currentpage == i ? true : false);
                }))
              ],
            )));
  }
}
