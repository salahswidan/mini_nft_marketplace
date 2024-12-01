import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';

import '../../features/home/home_page.dart';

class RouteManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteName.KOnBoardingPage: (context) => const OnBoardingPage(),
    RouteName.KHomePage: (context) => const HomePage(),
  };
}

class RouteName {
  static const String KOnBoardingPage = "onBoarding";
  static const String KHomePage = "HomePage";
}
