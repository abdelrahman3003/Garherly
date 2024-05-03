import 'package:gatherly/view/auth/signin/signin_view.dart';
import 'package:gatherly/view/auth/signup/signup_view.dart';
import 'package:gatherly/view/event/join_event/join_event_view.dart';
import 'package:gatherly/view/event/create_event.dart';
import 'package:gatherly/view/home/buttom_navigator_bar.dart';
import 'package:gatherly/view/home/home_view.dart';
import 'package:gatherly/view/splash/splash_view.dart';
import 'package:gatherly/view/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const kSplashView = "/SplashView";
const kWelcomeView = "/WelcomeView";
const kSignInView = "/SignInView";
const kSignUpView = "/SignUpView";
const kCreateEventView = "/CreateEventView";
const kJoinEventView = "/JoinEventView";
const kCreateEvent = "/kCreateEvent";
const kBottomNavigationScreen = "/BottomNavigationScreen";

const kHomeView = "/HomeView";
List<GetPage<dynamic>>? getPages = [
  GetPage(name: kSplashView, page: () => const SplashView()),
  GetPage(name: "/", page: () => const WelcomeView()),
  GetPage(name: kSignInView, page: () => const SignInView()),
  GetPage(name: kSignUpView, page: () => const SignUpView()),
  GetPage(name: kJoinEventView, page: () => const JoinEventView()),
  GetPage(name: kCreateEvent, page: () => const CreateEvent()),
  GetPage(name: kHomeView, page: () => const HomeView()),
  GetPage(name: kBottomNavigationScreen, page: () => const BottomNavigationScreen()),
];
