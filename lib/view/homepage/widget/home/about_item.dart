import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';

class AboutItem extends StatelessWidget {
  const AboutItem({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Container(
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.secondry,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ))
      ],
    );
  }
}
