import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.prefixIcon, this.hintText});
  final Icon? prefixIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        fillColor: AppColor.third,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
            borderRadius: BorderRadius.circular(25)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
            borderRadius: BorderRadius.circular(250)),
      ),
    );
  }
}
