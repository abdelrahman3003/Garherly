import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/shared/app_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 4),
            Text("Login ",
                style: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold)),
            Text("please fill the details to continue ",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w200)),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username or mobile number ",
                prefixIcon: const Icon(Icons.person),
                fillColor: AppColor.third,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
                    borderRadius: BorderRadius.circular(25)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
                    borderRadius: BorderRadius.circular(250)),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter password  ",
                prefixIcon: const Icon(Icons.password),
                fillColor: AppColor.third,
                suffixIcon: const Icon(Icons.remove_red_eye),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
                    borderRadius: BorderRadius.circular(25)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.third, width: 1.3.h),
                    borderRadius: BorderRadius.circular(250)),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                  width: 260.w,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.secondry,
                  ),
                  child: AppButton(
                    name: "Log in",
                    onPressed: () {},
                  )),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
