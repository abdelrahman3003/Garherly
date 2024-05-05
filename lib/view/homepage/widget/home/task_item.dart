import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(
      {super.key,
      required this.currentValue,
      required this.userName,
      required this.taskName,
      this.onChanged});
  final double currentValue;
  final String userName;
  final String taskName;
  final Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.h,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColor.third,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  taskName,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: currentValue,
              onChanged: onChanged,
              max: 100,
              divisions: 5,
              label: currentValue.round().toString(),
            )
          ],
        ));
  }
}
