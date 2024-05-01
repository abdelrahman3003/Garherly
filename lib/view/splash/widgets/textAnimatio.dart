import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class textAnimation extends StatelessWidget {
  const textAnimation({
    super.key,
    required this.slidinganmation,
  });

  final Animation<Offset> slidinganmation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganmation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganmation,
          child:  Text(
            "Gatherly ",
            style: TextStyle(fontSize: 48.sp,),
            textAlign: TextAlign.center,
            
          ),
        );
      },
    );
  }
}
