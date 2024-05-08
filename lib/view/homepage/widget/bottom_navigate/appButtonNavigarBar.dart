import 'package:flutter/material.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/view/homepage/widget/profile/appar_item.dart';
import 'package:get/get.dart';

class AppBottomNavigatorBar extends StatelessWidget {
  const AppBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonNavigatorBarControllerImp>(
      builder: (controller) => BottomAppBar(
        padding: const EdgeInsets.only(bottom: 2),
        color: AppColor.primary,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppbarItem(
                icon: Icons.home,
                iconName: "Home",
                isactive: controller.pageCount == 0 ? true : false,
              ),
              AppbarItem(
                icon: Icons.add,
                iconName: "Task",
                isactive: controller.pageCount == 1 ? true : false,
              ),
              AppbarItem(
                icon: Icons.how_to_vote,
                iconName: "Vote",
                isactive: controller.pageCount == 2 ? true : false,
              ),
              AppbarItem(
                icon: Icons.person,
                iconName: "Profile",
                isactive: controller.pageCount == 3 ? true : false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
