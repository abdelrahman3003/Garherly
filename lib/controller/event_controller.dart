import 'package:get/get.dart';

abstract class EventController extends GetxController {
  changePage();
}

class EventControllerImp extends EventController {
  bool isJoined = true;
  @override
  changePage() {
    isJoined = !isJoined;
    update();
  }
}
