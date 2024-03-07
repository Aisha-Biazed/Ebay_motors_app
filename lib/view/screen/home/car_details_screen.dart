import 'package:ebay_motors/core/shared/custom_button_widget.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_image.dart';
import '../../../core/shared/custom_appbar_widget.dart';
import '../../../core/shared/navigation_widget.dart';
import '../../../generated/assets.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final List<String> imageAssets = [
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
    Assets.imagesSlide,
  ];
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    final String title = arguments['title'] ?? '';
    final String subTitle = arguments['subTile'] ?? '';
    final String img = arguments['img'] ?? '';
    final pages = List.generate(
      img.length,
      (index) => Container(
        margin: REdgeInsetsDirectional.only(start: 10),
        child: Center(
            child: AppImage.asset(
          img,
          fit: BoxFit.fill,
        )),
      ),
    );

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart Details',
      ),
      // bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
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
                    return pages[index % pages.length];
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: ScrollingDotsEffect(
                  paintStyle: PaintingStyle.stroke,
                  activeStrokeWidth: 10.w,
                  dotColor: ColorManager.primary,
                  activeDotColor: ColorManager.primary,
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          REdgeInsetsDirectional.only(start: 28.w, end: 28.w),
                      child: Column(
                        children: [
                          ListTile(
                            title: CustomText(
                              txt: title,
                            ),
                            trailing: CustomText(
                              txt: subTitle,
                              txtColor: ColorManager.dark,
                            ),
                          ),
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
    );
  }
}
