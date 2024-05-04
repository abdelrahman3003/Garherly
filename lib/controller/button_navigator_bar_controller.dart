import 'package:flutter/material.dart';
import 'package:gatherly/view/homepage/chat_view.dart';
import 'package:gatherly/view/homepage/groub_view.dart';
import 'package:gatherly/view/homepage/home_View.dart';
import 'package:gatherly/view/homepage/profile_view.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class ButtonNavigatorBarController extends GetxController {
  changepage(int i);
  String appBarTilte();
}

class ButtonNavigatorBarControllerImp extends ButtonNavigatorBarController {
  int pageCount = 0;
  bool isbar = true;
  List<Widget> pageList = [
    const HomeView(),
    const GroubView(),
    const ChatView(),
    const ProfileView(),
  ];

  @override
  changepage(i) {
    pageCount = i;
    update();
  }

  @override
  String appBarTilte() {
    if (pageCount == 0) {
      return "Event Details";
    } else if (pageCount == 1) {
      return "Chat";
    } else if (pageCount == 2) {
      return "Add Event";
    }
    return "Others";
  }
}
