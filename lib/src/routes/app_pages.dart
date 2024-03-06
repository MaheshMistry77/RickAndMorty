import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/details_screen/view/detail_screen.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/binding/list_binding.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/view/list_screen.dart';

import '../presentation/onboarding_screen/view/onboarding1_screen.dart';
import '../presentation/onboarding_screen/view/onboarding2_screen.dart';
import '../presentation/onboarding_screen/view/onboarding3_screen.dart';
import '../presentation/onboarding_screen/view/onboarding_screen.dart';

abstract class AppPages {
  static const initial = AppRoutes.listRoute;

  static final pages = <GetPage>[
    /*
    * ===== Onboarding Pages =====
     */
    GetPage(
      name: AppRoutes.onBoardingRoute,
      page: () => const OnboardingScreen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding1Route,
      page: () => const OnBoarding1Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding2Route,
      page: () => const OnBoarding2Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding3Route,
      page: () => const OnBoarding3Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    /* 
    * ===== Character List Page =====
     */
    GetPage(
        name: AppRoutes.listRoute,
        page: () => const ListScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        transition: Transition.rightToLeft,
        binding: ListBinding()),
  ];
}

abstract class AppRoutes {
  static const onBoardingRoute = '/onBoarding';
  static const onBoarding1Route = '/onBoarding1';
  static const onBoarding2Route = '/onBoarding2';
  static const onBoarding3Route = '/onBoarding3';
  static const listRoute = '/';
  static const detailRoute = '/detailScreen';
}
