import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/image_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/strings_managers.dart';
import 'dart:ui' show ImageFilter;

import '../widget/custom_bg_image_widget.dart';
import '../widget/custom_card.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CustomBgImageWidget(),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 72,
              ),
              Text(
                StringsManagers.appName,
                style: TextStyle(
                    color: ColorManagers.kPrimaryWhite,
                    fontSize: FontSize.f36,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontManagers.KMain),
              ),
              Spacer(),
              CustomCard(),
              SizedBox(
                height: 72,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
