import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onPressed, required this.name});
  final void Function()? onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
      color: ColorsApp.secondry,
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 20),
     
        onPressed: onPressed,
        
        height: 41.h,
        minWidth: 162.w,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
