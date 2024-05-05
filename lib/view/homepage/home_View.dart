import 'package:flutter/material.dart';
import 'package:gatherly/view/homepage/widget/home/about.dart';
import 'package:gatherly/view/homepage/widget/home/task_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(child: About())),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: TaskaView(),
      )
    ]);
  }
}
