import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/view/widget/home/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../controller/car_details_controller.dart';
import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/custom_appbar_widget.dart';
import '../../widget/home/properties_car_details.dart';

class CarDetailsScreen extends StatelessWidget {
  CarDetailsScreen({Key? key}) : super(key: key);

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  CarDetailsController controllerDetails = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart Details',
      ),
      body: Obx(
        () => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                16.verticalSpace,
                SizedBox(
                  height: 240,
                  child: PageView.builder(
                    controller: controller,
                    itemBuilder: (_, index) {
                      return controllerDetails
                          .pages[index % controllerDetails.pages.length];
                    },
                  ),
                ),
                SliderWidget(),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            REdgeInsetsDirectional.only(start: 40.w, end: 40.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PropertiesDetailsCar(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomText(
                                  txt: controllerDetails.title.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.subTitle.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.title.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.subTitle.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.title.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.subTitle.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.title.value,
                                  txtColor: ColorManager.grey,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  txt: controllerDetails.subTitle.value,
                                  txtColor: ColorManager.grey,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      CustomButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "",
                                content: Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline_outlined,
                                      size: 100.w,
                                      color: Colors.green,
                                    ),
                                    const CustomText(
                                        txt:
                                            "Item added to your cart successful...")
                                  ],
                                ),
                                // middleText: "Item added to your cart successful...",
                                textConfirm: "ok",
                                confirm: CustomButton(
                                  onPressed: () {},
                                  textButton: "ok",
                                ));
                          },
                          textButton: "+ Add To Cart"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
