import 'package:flutter/material.dart';
import 'package:gatherly/view/splash/splash_view.dart';

void main() {
  runApp(const Gatherly());
}

class Gatherly extends StatelessWidget {
  const Gatherly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(body: SplashView()),
    );
  }
}
