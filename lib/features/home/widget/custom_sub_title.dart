import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../../../core/resourses/font_managers.dart';

class customSubTitle extends StatelessWidget {
  customSubTitle({
    super.key,
    required this.title,
   
  });
   final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Text(
          title,
          style: TextStyle(
              color: ColorManagers.kPrimaryWhite,
              fontSize: 18,
              fontFamily: FontManagers.KMain),
        ),
      ),
    );
  }
}
