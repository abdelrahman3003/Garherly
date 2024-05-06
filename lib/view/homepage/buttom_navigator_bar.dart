import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:gatherly/view/homepage/widget/bottom_navigate/appButtonNavigarBar.dart';
import 'package:gatherly/view/homepage/widget/bottom_navigate/costom_appbar.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ButtonNavigatorBarControllerImp());
    return DefaultTabController(
      length: 2,
      child: GetBuilder<ButtonNavigatorBarControllerImp>(builder: (controller) {
        return Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.h),
                child: CustomAppBar(
                  title: controller.pageCount == 3
                      ? "MY Profile"
                      : "Event Details",
                  bottom: controller.pageCount == 0
                      ? const TabBar(tabs: [
                          Tab(text: "About"),
                          Tab(text: "Tasks"),
                        ])
                      : const PreferredSize(
                          preferredSize: Size.zero, child: SizedBox()),
                  leading: InkWell(
                    onTap: () {
                      Get.toNamed(kAddTaskView);
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColor.third,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Add task",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        )),
                  ),
                )),
            bottomNavigationBar: const AppBottomNavigatorBar(),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: FloatingActionButton(
            //     backgroundColor: AppColor.primary,
            //     onPressed: () {},
            //     child: const Icon(Icons.home)),
            body: GetBuilder<ButtonNavigatorBarControllerImp>(
              builder: (controllerbuild) {
                return SafeArea(
                    child: controllerbuild.pageList[controllerbuild.pageCount]);
              },
            ));
      }),
    );
  }
}
