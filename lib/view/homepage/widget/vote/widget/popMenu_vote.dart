import 'package:flutter/material.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:get/get.dart';

class PopmenuVote extends StatelessWidget {
  const PopmenuVote({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
              value: 'Chating',
              child: InkWell(
                  onTap: () {
                    Get.toNamed(kAddVoteView);
                  },
                  child: Text("add vote"))),
        ];
      },
      onSelected: (String value) {},
    );
  }
}
