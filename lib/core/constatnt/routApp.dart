import 'package:gatherly/view/splash/splash_view.dart';
import 'package:gatherly/view/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const kSplashView = "/SplashView";
const kWelcomeView = "/WelcomeView";
List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => const SplashView()),
  GetPage(name: kWelcomeView, page: () => const WelcomeView()),
];
