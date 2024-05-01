import 'package:flutter/material.dart';
import 'package:gatherly/core/constatnt/routApp.dart';
import 'package:gatherly/view/splash/widgets/textAnimatio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
 //   Get.offNamed(kWelcomeView);
    super.initState();
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
        const SizedBox(height: 6),
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
