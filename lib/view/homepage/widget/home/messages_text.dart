import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/home_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:get/get.dart';

class MessageText extends GetView<HomeControllerImp> {
  const MessageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Message With ",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "Group",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.primary),
          ),
        ),
      ],
    );
  }
}
