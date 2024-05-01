import 'package:gatherly/view/auth/signin/signin_view.dart';
import 'package:gatherly/view/auth/signup/signup_view.dart';
import 'package:gatherly/view/event/join_event/join_event_view.dart';
import 'package:gatherly/view/splash/splash_view.dart';
import 'package:gatherly/view/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const kSplashView = "/SplashView";
const kWelcomeView = "/WelcomeView";
const kSignInView = "/SignInView";
const kSignUpView = "/SignUpView";
const kCreateEventView = "/CreateEventView";
const kJoinEventView = "/JoinEventView";
List<GetPage<dynamic>>? getPages = [
  GetPage(name: kSplashView, page: () => const SplashView()),
  GetPage(name: kWelcomeView, page: () => const WelcomeView()),
  GetPage(name: kSignInView, page: () => const SignInView()),
  GetPage(name: kSignUpView, page: () => const SignUpView()),
  GetPage(name: "/", page: () => const JoinEventView()),
];
