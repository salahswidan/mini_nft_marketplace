import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';

import '../../features/home/home_page.dart';
import '../../features/state/screens/state_page.dart';

class RouteManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteName.KOnBoardingPage: (context) => const OnBoardingPage(),
    RouteName.KHomePage: (context) => const HomePage(),
    RouteName.KStatePage: (context) => const StatePage(),

  };
}

class RouteName {
  static const String KOnBoardingPage = "onBoarding";
  static const String KHomePage = "HomePage";
  static const String KStatePage = "StatePage";
}
