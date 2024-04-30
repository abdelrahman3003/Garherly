import 'package:flutter/material.dart';
import 'package:gatherly/core/constatnt/app_color.dart';

import 'widgets/spalsh_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.kprimaryColor1, body: SplashBody());
  }
}
