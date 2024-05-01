import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/shared/app_button.dart';

class JoinEventView extends StatelessWidget {
  const JoinEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello,Mona alharbi",
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 165.w,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: AppButton(
                    name: "Creat event",
                    onPressed: () {},
                    textColor: AppColor.primary,
                    textSize: 18.sp,
                  )),
              Container(
                  width: 166.w,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.secondry,
                  ),
                  child: AppButton(
                    name: "Join events",
                    textSize: 18.sp,
                    onPressed: () {},
                  )),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColor.third, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Event Id",
                    prefixIcon: const Icon(Icons.person),
                    fillColor: AppColor.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.white, width: 1.3.h),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.white, width: 1.3.h),
                        borderRadius: BorderRadius.circular(250)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    fillColor: AppColor.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.white, width: 1.3.h),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.white, width: 1.3.h),
                        borderRadius: BorderRadius.circular(250)),
                  ),
                ),
              ],
            ),
          ),

          // SvgPicture.asset(
          //   "assets/icons/iconPlus.svg",
          //   width: 100.w,
          //   height: 100.h,
          // )
        ],
      ),
    ));
  }
}
