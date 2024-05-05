import 'package:flutter/material.dart';
import 'package:gatherly/controller/home/add_task_controller.dart';
import 'package:gatherly/view/homepage/widget/home/checkbox_textform.dart';
import 'package:get/get.dart';

class ListAddedTask extends StatelessWidget {
  const ListAddedTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddTaskControllerImp>(
      builder: (controller) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.task,
          itemBuilder: (context, index) => const CheckboxTextForm(),
        );
      }
    );
  }
}
