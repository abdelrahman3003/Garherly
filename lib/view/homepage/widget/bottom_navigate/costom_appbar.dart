import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, this.bottom, this.leading});
  final String title;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [leading ?? const SizedBox()],
        bottom: bottom);
  }
}
