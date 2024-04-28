import 'package:flutter/material.dart';

import 'textAnimatio.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganmation;

  @override
  void initState() {
    animate();
    
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      
        textAnimation(slidinganmation: slidinganmation)
      ],
    );
  }

  void animate() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganmation = Tween<Offset>(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    slidinganmation.addListener(() {});
  }
}
