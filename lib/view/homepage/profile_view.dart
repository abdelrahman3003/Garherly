import 'package:flutter/material.dart';
import 'package:gatherly/controller/prifile_controller.dart';
import 'package:gatherly/view/homepage/widget/profile/widget/priofile_view_body.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileControolerImp());
    return Scaffold(
      body: ProfileViewBody(),
    );
  }
}
