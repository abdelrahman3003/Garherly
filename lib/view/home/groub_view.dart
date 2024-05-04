import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Center(child: Text("view 1")),
      Center(child: Text("view 2")),
      Center(child: Text("view 2")),
    ]);
  }
}
