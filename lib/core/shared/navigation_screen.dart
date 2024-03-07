import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controller/navigation_bar_controller.dart';
import '../../view/widget/navigation/navigation_bottom_bar_widget.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavigationBarControllerImp());
    return GetBuilder<NavigationBarControllerImp>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: const NavigationBottomBarWidget(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
