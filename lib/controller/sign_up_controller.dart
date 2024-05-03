import 'package:flutter/material.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  onScure();
}

class SignUpControllerImp extends SignUpController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isScurePassword = true;
  @override
  signUp() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Get.toNamed(kSignInView);
    }
    update();
  }

  @override
  onScure() {
    isScurePassword = !isScurePassword;
    update();
  }
}
