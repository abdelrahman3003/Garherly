import 'package:flutter/material.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/view/homepage/widget/bottom_navigate/appar_item.dart';
import 'package:get/get.dart';

class AppBottomNavigatorBar extends StatelessWidget {
  const AppBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonNavigatorBarControllerImp>(
      builder: (controller) => BottomAppBar(
        color: AppColor.primary,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppbarItem(
              icon: Icons.home,
              //iconName: ConstanstValue.home,
              isactive: controller.pageCount == 0 ? true : false,
            ),
            AppbarItem(
              icon: Icons.group,
              // iconName: ConstanstValue.favourite,
              isactive: controller.pageCount == 1 ? true : false,
            ),
            AppbarItem(
              icon: Icons.chat,
              // iconName: ConstanstValue.setting,
              isactive: controller.pageCount == 2 ? true : false,
            ),
            AppbarItem(
              icon: Icons.menu,
              //iconName: ConstanstValue.cart,
              isactive: controller.pageCount == 3 ? true : false,
            ),
          ],
        ),
      ),
    );
  }
}
