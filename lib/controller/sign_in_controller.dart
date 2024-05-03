import 'package:flutter/material.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signIn();
  onScure();
}

class SignInControllerImp extends SignInController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isScurePassword = true;
  @override
  signIn() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Get.toNamed(kJoinEventView);
    }
    update();
  }

  @override
  onScure() {
    isScurePassword = !isScurePassword;
    update();
  }
}
