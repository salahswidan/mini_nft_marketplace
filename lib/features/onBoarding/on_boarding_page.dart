import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/image_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/strings_managers.dart';
import 'dart:ui' show ImageFilter;

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage(ImageManagers.OnBoardingBackGroundImage)),
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
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 306,
                    height: 191,
                    color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
                  ),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
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
