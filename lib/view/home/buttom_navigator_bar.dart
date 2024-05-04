import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/view/home/widget/bottom_navigate/appButtonNavigarBar.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ButtonNavigatorBarControllerImp());
    return DefaultTabController(
      length: 3,
      child: GetBuilder<ButtonNavigatorBarControllerImp>(builder: (controller) {
        return Scaffold(
            appBar: AppBar(
                title: Text(
                  controller.appBarTilte(),
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                centerTitle: true,
                leading: const Icon(
                  Icons.arrow_back,
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
                bottom: controller.isbar
                    ? TabBar(tabs: [
                        Tab(text: "tab11"),
                        Tab(text: "tab2"),
                        Tab(text: "tab3"),
                      ])
                    : PreferredSize(
                        preferredSize: Size.zero, child: SizedBox())),
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
