import 'package:flutter/material.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:get/get.dart';

class AppbarItem extends GetView<ButtonNavigatorBarControllerImp> {
  const AppbarItem({
    super.key,
    this.iconName = "",
    required this.icon,
    required this.isactive,
  });
  final String iconName;
  final IconData icon;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            if (icon == Icons.group) {
              controller.changepage(1);
            } else if (icon == Icons.chat) {
              controller.changepage(2);
            } else if (icon == Icons.person) {
              controller.changepage(3);
            } else {
              controller.changepage(0);
            }
          },
          icon: Icon(icon, color: isactive ? Colors.black : Colors.white),
        ),
        // Text(
        //   iconName,
        //   style: Styles.textStyle16,
        // ),
      ],
    );
  }
}
