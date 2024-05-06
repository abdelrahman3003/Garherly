import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/shared/app_button.dart';

class VoteCart extends StatelessWidget {
  const VoteCart({super.key, required this.nuVote, required this.option});
  final int nuVote;
  final String option;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.primary,
      ),
      child: Column(
        children: [
          Text(
            option,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Slider(
                  activeColor: AppColor.third,
                  value: 20,
                  onChanged: (val) {},
                  max: 100,
                  divisions: 5,
                  label: 20.round().toString(),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.third),
                child: Text(
                  "$nuVote",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.third,
              ),
              child: AppButton(
                name: "Vote",
                onPressed: () {},
                textColor: AppColor.primary,
              )),
        ],
      ),
    );
  }
}
