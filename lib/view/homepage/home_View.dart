import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/event_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:gatherly/core/constatnt/validation.dart';
import 'package:gatherly/core/shared/app_button.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Column(
        children: [
          Text(
            "Event Start ",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      )
    ]);
  }
}
