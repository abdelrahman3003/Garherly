import 'package:get/get.dart';

abstract class TaskController extends GetxController {
  changeSlider(double val);
}

class TaskControllerImp extends TaskController {
  double? currentValue;
  @override
  void onInit() {
    currentValue = 10;
    super.onInit();
  }

  @override
  changeSlider(double val) {
    currentValue = val;
    update();
  }
}
