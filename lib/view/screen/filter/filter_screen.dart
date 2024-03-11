import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../controller/range_slider_controller.dart';
import '../../../controller/year_picker_controller.dart';
import '../../../core/shared/custom_appbar_widget.dart';
import '../../widget/auth/form_widgetl.dart';
import '../../widget/navigation/navigation_bottom_bar_widget.dart';
import '../../../controller/navigation_bar_controller.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);
  FilterController controller = Get.find();
  YearPickerController c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          title: 'Filter',
        ),
        body: GetX<FilterController>(builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomFormWidget(
                labelText: 'Model',
              ),
              const CustomFormWidget(
                labelText: 'Company',
              ),
              const CustomText(txt: "Price", textAlign: TextAlign.start),
              RangeSlider(
                activeColor: ColorManager.primary,
                inactiveColor: ColorManager.grey,
                values: controller.values.value, // Initial range values
                min: 0, // Minimum value
                max: 100, // Maximum value
                divisions: 50, // Number of divisions
                labels: const RangeLabels(
                    'min', 'max'), // Labels displayed above the sliders
                onChanged: controller.updateValues,
              ),
              Card(
                margin: REdgeInsetsDirectional.only(end: 28.w, start: 28.w),
                child: ListTile(
                  contentPadding:
                      REdgeInsetsDirectional.only(start: 10.w, end: 10.w),
                  title: CustomText(
                    txt: controller.values.toString(),
                  ),
                  trailing: const CustomText(
                    txt: "\$",
                  ),
                ),
              ),
              GetBuilder<YearPickerController>(builder: (controller) {
                return CustomFormWidget(
                  hintText: controller.selectedDate.toString(),
                  labelText: 'Launch Year',
                );
              }),
              20.verticalSpace,
              Container(
                height: 56,
                child: GetBuilder<YearPickerController>(builder: (controller) {
                  return TextButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: "Select Year",
                        content: Container(
                          width: 300,
                          height: 300,
                          child: YearPicker(
                            firstDate: DateTime(DateTime.now().year - 10, 1),
                            lastDate: DateTime(DateTime.now().year, 1),
                            selectedDate: controller.selectedDate,
                            onChanged: (DateTime dateTime) {
                              controller.selectedDate = dateTime;
                              Get.back();
                              controller.update();
                            },
                          ),
                        ),
                      );
                    },
                    child: CustomText(
                      txt: "Click here to Select Years ",
                      txtColor: ColorManager.grey,
                    ),
                  );
                }),
              ),
              CustomButton(textButton: "Apply", onPressed: () {})
            ],
          );
        }));
  }
}
