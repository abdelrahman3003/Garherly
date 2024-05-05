import 'package:flutter/material.dart';
import 'package:gatherly/controller/home/tasks_controller.dart';
import 'package:gatherly/view/homepage/widget/home/task_item.dart';
import 'package:get/get.dart';

class TaskaView extends StatelessWidget {
  const TaskaView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TaskControllerImp());
    return GetBuilder<TaskControllerImp>(builder: (controller) {
      return SingleChildScrollView(
        child: Column(
          children: [
            TaskItem(
                currentValue: controller.currentValue!,
                userName: "userName 1",
                taskName: "taskName 1",
                onChanged: (val) {
                  controller.changeSlider(val);
                }),
            TaskItem(
                currentValue: controller.currentValue!,
                userName: "userName 2",
                taskName: "taskName 2",
                onChanged: (val) {
                  controller.changeSlider(val);
                }),
            TaskItem(
                currentValue: controller.currentValue!,
                userName: "userName 3",
                taskName: "taskName 3",
                onChanged: (val) {
                  controller.changeSlider(val);
                }),
            TaskItem(
                currentValue: controller.currentValue!,
                userName: "userName 4",
                taskName: "taskName 4",
                onChanged: (val) {
                  controller.changeSlider(val);
                }),
          ],
        ),
      );
    });
  }
}
