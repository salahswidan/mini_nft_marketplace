import 'package:flutter/material.dart';

import '../../core/resourses/color_managers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManagers.kPrimary,
    );
  }
}
