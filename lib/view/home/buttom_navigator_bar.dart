import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/view/home/widget/appButtonNavigarBar.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ButtonNavigatorBarControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Event Details",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const AppBottomNavigatorBar(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primary,
            onPressed: () {},
            child: const Icon(Icons.home)),
        body: GetBuilder<ButtonNavigatorBarControllerImp>(
          builder: (controller) {
            return SafeArea(child: controller.pageList[controller.pageCount]);
          },
        ));
  }
}
