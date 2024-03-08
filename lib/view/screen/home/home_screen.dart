import 'package:ebay_motors/core/constant/router/app_routes.dart';
import 'package:ebay_motors/generated/assets.dart';
import 'package:ebay_motors/view/widget/home/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/shared/custom_appbar_widget.dart';
import '../../../model/car_details_model.dart';
import '../../widget/home/header_home_widget.dart';
import 'car_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Home',
        ),
        body: SafeArea(
          child: Padding(
            padding:
                REdgeInsetsDirectional.only(start: 28.w, end: 28.w, top: 20.h),
            child: Column(
              children: [
                HeaderWidget(),
                Expanded(
                  child: ListView(
                    padding: REdgeInsetsDirectional.only(top: 60.h),
                    children: [
                      ItemWidget(
                        milliseconds: 1000,
                        title: " Audi R8 2023 ",
                        subTile: "\$158,600 ",
                        img: Assets.imagesCar2,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Audi R8 2023",
                            'subTitle': "\$158,600",
                            'img': Assets.imagesCar2,
                          });
                        },
                      ),
                      ItemWidget(
                        milliseconds: 1600,
                        title: "BMW XM 2023",
                        subTile: "\$159,995 ",
                        img: Assets.imagesCar3,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "BMW XM 2023 ",
                            'subTitle': "\$159,995",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                      ItemWidget(
                        title: "Mercedes-Benz G-Class 2024 ",
                        subTile: "\$143,000  ",
                        img: Assets.imagesCar4,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Mercedes-Benz",
                            'subTitle': "\$143,000 ",
                            'img': Assets.imagesSlide,
                          });
                        },
                        milliseconds: 2200,
                      ),
                      ItemWidget(
                        milliseconds: 3000,
                        title: "Kia K5 2024 ",
                        subTile: "\$25,390   ",
                        img: Assets.imagesCar5,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Kia K5 ",
                            'subTitle': "\$25,390",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                      ItemWidget(
                        milliseconds: 3600,
                        title: "Chevrolet Tahoe 2024",
                        subTile: "\$58,195",
                        img: Assets.imagesCar6,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Chevrolet Tahoe 2024",
                            'subTitle': "\$58,195",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
