import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.bottom,
      this.leading,
      this.training});
  final String title;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final Widget? training;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [training ?? const SizedBox()],
        bottom: bottom,
        leading: leading

        // IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: Icon(Icons.arrow_back)),
        );
  }
}
