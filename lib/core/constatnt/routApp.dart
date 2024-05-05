import 'package:gatherly/view/auth/signin/signin_view.dart';
import 'package:gatherly/view/auth/signup/signup_view.dart';
import 'package:gatherly/view/event/join_event_view.dart';
import 'package:gatherly/view/event/create_event.dart';
import 'package:gatherly/view/homepage/buttom_navigator_bar.dart';
import 'package:gatherly/view/homepage/widget/home/add_task_view.dart';
import 'package:gatherly/view/homepage/widget/home/task_details.dart';

import 'package:gatherly/view/splash/splash_view.dart';
import 'package:gatherly/view/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const kSplashView = "/SplashView";
const kWelcomeView = "/WelcomeView";
const kSignInView = "/SignInView";
const kSignUpView = "/SignUpView";
const kCreateEventView = "/CreateEventView";
const kJoinEventView = "/JoinEventView";
const kCreateEvent = "/CreateEvent";
const kBottomNavigationScreen = "/BottomNavigationScreen";
const kTaskDetailsView = "/TaskDetailsView";
const kAddTaskView = "/AddTaskView";

const kHomeView = "/HomeView";
List<GetPage<dynamic>>? getPages = [
  GetPage(name: kSplashView, page: () => const SplashView()),
  GetPage(name: kWelcomeView, page: () => const WelcomeView()),
  GetPage(name: kSignInView, page: () => const SignInView()),
  GetPage(name: kSignUpView, page: () => const SignUpView()),
  GetPage(name: kJoinEventView, page: () => const JoinEventView()),
  GetPage(name: kCreateEvent, page: () => const CreateEvent()),
  GetPage(name: "/", page: () => const BottomNavigationScreen()),
  GetPage(name: kTaskDetailsView, page: () => const TaskDetailsView()),
  GetPage(name: kAddTaskView, page: () => const AddTaskView()),
];
