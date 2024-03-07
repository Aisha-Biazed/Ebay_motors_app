import 'package:ebay_motors/core/constant/router/app_routes.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:ebay_motors/generated/assets.dart';
import 'package:ebay_motors/view/widget/home/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            txt: "Home",
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding:
                REdgeInsetsDirectional.only(start: 28.w, end: 28.w, top: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: SearchBar(
                        hintText: 'Search',
                        leading: Icon(Icons.search_outlined),
                      ),
                    ),
                    10.horizontalSpace,
                    const Icon(
                      Icons.filter_list_alt,
                      size: 30,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    padding: REdgeInsetsDirectional.only(top: 20.h),
                    children: [
                      ItemWidget(
                        title: " Audi R8 2023 ",
                        subTile: "\$158,600 ",
                        img: Assets.imagesCar2,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Audi R8 2023",
                            'subTile': "\$158,600",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                      ItemWidget(
                        title: "BMW XM 2023",
                        subTile: "\$159,995 ",
                        img: Assets.imagesCar3,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "BMW XM 2023",
                            'subTile': "\$159,995 ",
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
                            'title': "Mercedes-Benz G-Class 2024 ",
                            'subTile': "\$143,000 ",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                      ItemWidget(
                        title: "Kia K5 2024 ",
                        subTile: "\$25,390   ",
                        img: Assets.imagesCar5,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Kia K5 2024 ",
                            'subTile': "\$25,390",
                            'img': Assets.imagesSlide,
                          });
                        },
                      ),
                      ItemWidget(
                        title: "Chevrolet Tahoe 2024",
                        subTile: "\$58,195",
                        img: Assets.imagesCar6,
                        onTap: () {
                          Get.toNamed(AppRoute.carDetails, arguments: {
                            'title': "Chevrolet Tahoe 2024",
                            'subTile': "\$58,195",
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
