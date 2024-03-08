import 'package:ebay_motors/core/constant/color_scheme/color_manger.dart';
import 'package:ebay_motors/core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.label,
      this.suffixIcon,
      this.prefixIcon,
      this.margin,
      this.name,
      this.height,
      this.hintText,
      this.hintStyle,
      this.hintMaxLines,
      this.textAlign,
      this.textDirection,
      this.readOnly = false,
      this.labelStyle})
      : super(key: key);
  final String? label;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsets? margin;
  final String? name;
  final double? height;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final int? hintMaxLines;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 90.h,
      child: TextFormField(
        cursorColor: ColorManager.grey,
        readOnly: readOnly,
        decoration: InputDecoration(
          label: label != null
              ? CustomText(
                  txt: label!,
                )
              : null,
          labelStyle: labelStyle ??
              context.textTheme.labelSmall?.copyWith(
                color: ColorManager.onSurfaceVariant,
              ),

          hintText: hintText,
          hintStyle: hintStyle ??
              context.textTheme.labelSmall?.copyWith(
                  color: ColorManager.primary,
                  fontSize: 17.sp,
                  fontFamily: 'Almarai'),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          hintMaxLines: hintMaxLines,
          isDense: true,

          contentPadding: REdgeInsetsDirectional.only(
              end: 16.w, start: 16.w, top: 70.h, bottom: 0.h),
          fillColor: ColorManager.surface,
          focusColor: ColorManager.surface,
          // alignLabelWithHint: alignLabelWithHint,
          suffixIcon: suffixIcon,
          prefixIconConstraints:
              BoxConstraints(maxHeight: 40.h, minHeight: 10.h, minWidth: 40.w),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.outline),
            borderRadius: BorderRadius.circular(28.r),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.outline),
            borderRadius: BorderRadius.circular(28.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.onSurfaceVariant),
            borderRadius: BorderRadius.circular(28.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary),
            // borderSide: BorderSide(color: context.colorScheme.primary),
            borderRadius: BorderRadius.circular(28.r),
          ),
        ),
        textAlign: textAlign ?? TextAlign.start,
        textDirection: textDirection,
      ),
    );
  }
}
