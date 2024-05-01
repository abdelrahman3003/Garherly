import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/shared/app_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       const   Spacer(flex: 7),
          Text(
            "Welcome to Gatherly ",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            "an app for managing and organizing your events  ",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          Spacer(flex: 3),
          const Center(child: AppButton(name: "Log in ")),
          const Center(child: AppButton(name: "Sign up ")),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
