import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/image_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/strings_managers.dart';

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
                height: 50,
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
              Text(
                StringsManagers.appName,
                style: TextStyle(
                    color: ColorManagers.kPrimaryWhite,
                    fontSize: FontSize.f36,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontManagers.KMain),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
