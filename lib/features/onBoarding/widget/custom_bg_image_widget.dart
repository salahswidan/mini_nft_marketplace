import 'package:flutter/material.dart';

import '../../../core/resourses/image_managers.dart';

class CustomBgImageWidget extends StatelessWidget {
  const CustomBgImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage(ImageManagers.OnBoardingBackGroundImage));
  }
}