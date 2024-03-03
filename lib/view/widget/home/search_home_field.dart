import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';

class SearChBar extends StatefulWidget {
  const SearChBar({Key? key}) : super(key: key);

  @override
  State<SearChBar> createState() => _SearChBarState();
}

class _SearChBarState extends State<SearChBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainGrey,
      body: Padding(
        padding: REdgeInsetsDirectional.only(start: 30, end: 44),
        child: Container(
          width: 293.w,
          height: 47.h,
          decoration: BoxDecoration(
              color: ColorManager.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(23)),
          child: TextField(
            autocorrect: true,
            textInputAction: TextInputAction.search,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              hintText: "Search",
              hintStyle: TextStyle(
                  fontSize: 16,
                  height: 2,
                  color: ColorManager.dark,
                  fontFamily: 'Poppins'),
              suffixIcon: Icon(
                Icons.search,
                size: 30,
                color: ColorManager.dark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
