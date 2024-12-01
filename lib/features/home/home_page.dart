import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../core/resourses/color_managers.dart';
import 'widget/custom_category_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "NFT MarketPlace",
          style: TextStyle(
              color: ColorManagers.kPrimaryWhite,
              fontSize: 25,
              fontFamily: FontManagers.KMain),
        ),
        backgroundColor: ColorManagers.kPrimary,
      ),
      backgroundColor: ColorManagers.kPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 167,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) => customCategoryHomePage(
                  title: Constants.categoryList[index].title,
                  image: Constants.categoryList[index].image),
            ),
          ),
        ],
      ),
    );
  }
}
