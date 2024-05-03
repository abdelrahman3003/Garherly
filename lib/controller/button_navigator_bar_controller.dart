import 'package:flutter/material.dart';
import 'package:gatherly/view/home/chat_view.dart';
import 'package:gatherly/view/home/groub_view.dart';
import 'package:gatherly/view/home/home_view.dart';
import 'package:gatherly/view/home/plus_view.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class ButtonNavigatorBarController extends GetxController {
  changepage(int i);
}

class ButtonNavigatorBarControllerImp extends ButtonNavigatorBarController {
  int pageCount = 0;

  List<Widget> pageList = [
    const GroubView(),
    const ChatView(),
    const PLusView(),
    const HomeView(),
  ];
  
  @override
  changepage(i) {
    pageCount = i;
    update();
  }
}
