import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../widget/navigation/navigation_bottom_bar_widget.dart';
import '../../../controller/navigation_bar_controller.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hi Filter Screen"),
      ),
    );
  }
}
