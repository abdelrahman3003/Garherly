import 'package:get/get.dart';

abstract class VoteController extends GetxController {
  changePage();
}

class VoteControllerImp extends VoteController {
  bool isJoined = true;
  bool test = true;
  @override
  changePage() {
    isJoined = !isJoined;
    update();
  }
}
