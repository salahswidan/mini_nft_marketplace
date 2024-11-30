import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';

import 'core/resourses/route_managers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteManagers.routes,
      initialRoute: RouteName.KOnBoardingPage,
      theme: ThemeData.dark(),
    );
  }
}
