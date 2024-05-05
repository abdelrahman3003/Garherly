import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatherly/controller/home/add_task_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/constatnt/validation.dart';
import 'package:gatherly/core/shared/app_button.dart';
import 'package:gatherly/view/homepage/widget/bottom_navigate/costom_appbar.dart';
import 'package:get/get.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddTaskControllerImp());
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: CustomAppBar(title: "Add Task")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                "Task Title",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter task name ",
                  fillColor: AppColor.third,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.third, width: 1.3.h),
                      borderRadius: BorderRadius.circular(25)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.third, width: 1.3.h),
                      borderRadius: BorderRadius.circular(250)),
                ),
                validator: (val) {
                  return validation(type: "Username", val: val!);
                },
              ),
              const SizedBox(height: 10),
              Text(
                "Task Title",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Check name ",
                  fillColor: AppColor.third,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.check_box,
                    color: AppColor.primary,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.third, width: 1.3.h),
                      borderRadius: BorderRadius.circular(25)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.third, width: 1.3.h),
                      borderRadius: BorderRadius.circular(250)),
                ),
                validator: (val) {
                  return validation(type: "Username", val: val!);
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColor.third,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: AppColor.primary,
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColor.secondry,
                    ),
                    child: AppButton(
                      name: "add task",
                      onPressed: () {},
                    )),
              ),
            ],
          ),
        ));
  }
}
