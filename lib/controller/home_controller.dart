import 'package:flutter/material.dart';
import 'package:gatherly/controller/button_navigator_bar_controller.dart';
import 'package:gatherly/core/constatnt/app_color.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

abstract class HomeController extends GetxController {

}

class HomeControllerImp extends HomeController {
  late ButtonNavigatorBarControllerImp controller;
  @override
  void onInit() {
    controller = ButtonNavigatorBarControllerImp();
    super.onInit();
  }

}
