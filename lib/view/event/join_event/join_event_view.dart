import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/event_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:gatherly/core/shared/app_button.dart';
import 'package:gatherly/view/event/join_event/widget/join.dart';
import 'package:get/get.dart';

class JoinEventView extends StatelessWidget {
  const JoinEventView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(EventControllerImp());
    return Scaffold(
        body: GetBuilder<EventControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello,Mona alharbi",
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Join(
                  color:
                      controller.isJoined ? AppColor.white : AppColor.primary,
                  textColor:
                      controller.isJoined ? AppColor.primary : AppColor.white,
                  text: "Create Event",
                  onPressed: () {
                    if (controller.isJoined) {
                      controller.changePage();
                    }
                  },
                ),
                Join(
                  color:
                      controller.isJoined ? AppColor.primary : AppColor.white,
                  textColor:
                      controller.isJoined ? AppColor.white : AppColor.primary,
                  text: "Join Event",
                  onPressed: () {
                    if (!controller.isJoined) {
                      controller.changePage();
                    }
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            controller.isJoined
                ? Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: AppColor.third,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Event Id",
                                prefixIcon: const Icon(Icons.person),
                                fillColor: AppColor.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.white, width: 1.3.h),
                                    borderRadius: BorderRadius.circular(25)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.white, width: 1.3.h),
                                    borderRadius: BorderRadius.circular(250)),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: const Icon(Icons.password),
                                suffixIcon: const Icon(Icons.remove_red_eye),
                                fillColor: AppColor.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.white, width: 1.3.h),
                                    borderRadius: BorderRadius.circular(25)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.white, width: 1.3.h),
                                    borderRadius: BorderRadius.circular(250)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Join(
                        color: AppColor.primary,
                        textColor: AppColor.white,
                        text: "Join",
                        onPressed: () {
                          Get.toNamed(kCreateEvent);
                        },
                      )
                    ],
                  )
                : Container(
                    height: 177.h,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColor.third,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, size: 45, color: AppColor.secondry),
                        Icon(Icons.remove, size: 45, color: AppColor.secondry),
                      ],
                    )),
                  )

            // SvgPicture.asset(
            //   "assets/icons/iconPlus.svg",
            //   width: 100.w,
            //   height: 100.h,
            // )
          ],
        ),
      ),
    ));
  }
}
