import 'package:flutter/material.dart';
import 'package:gatherly/controller/vote/Vote_controller.dart';
import 'package:gatherly/view/homepage/widget/vote/widget/vote_view_body.dart';
import 'package:get/get.dart';

class VoteView extends StatelessWidget {
  const VoteView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VoteControllerImp());
    return const VoteViewBody();
  }
}
