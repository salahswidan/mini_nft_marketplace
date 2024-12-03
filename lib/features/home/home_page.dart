import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../core/resourses/color_managers.dart';
import 'widget/custom_card_collection.dart';
import 'widget/custom_card_top_seller.dart';
import 'widget/custom_list_view_top.dart';
import 'widget/custom_sub_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        height: 122,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  height: 90,
                  color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.home,
                        color: ColorManagers.kPrimaryWhite,
                        size: 39,
                      ),
                      Icon(
                        Icons.stacked_bar_chart_rounded,
                        color: ColorManagers.kPrimaryWhite,
                        size: 39,
                      ),
                      Container(
                        width: 39,
                      ),
                      Icon(
                        Icons.search,
                        color: ColorManagers.kPrimaryWhite,
                        size: 39,
                      ),
                      Icon(
                        Icons.person,
                        color: ColorManagers.kPrimaryWhite,
                        size: 39,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                child: Icon(
                  CupertinoIcons.plus,
                  color: Colors.white,
                ),
                decoration: ShapeDecoration(
                  shape: StarBorder.polygon(sides: 6, pointRounding: .5),
                  color: Colors.white.withOpacity(0.5),
                ),
                height: 70,
                width: 70,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "NFT MarketPlace",
          style: TextStyle(
            color: ColorManagers.kPrimaryWhite,
            fontSize: 25,
            fontFamily: FontManagers.KMain,
          ),
        ),
        backgroundColor: ColorManagers.kPrimary,
      ),
      backgroundColor: ColorManagers.kPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            customListViewTop(),
            const SizedBox(height: 27),
            customSubTitle(title: "Treaning Collections"),
            const SizedBox(height: 7),
            SizedBox(
              height: 197,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardCollection(
                  collectionModel: Constants.collectionList[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 28),
                itemCount: Constants.collectionList.length,
              ),
            ),
            const SizedBox(height: 27),
            customSubTitle(title: "Top Seller"),
            const SizedBox(height: 7),
            SizedBox(
              height: 243,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                  topSellerModel: Constants.topSellerList[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 28),
                itemCount: Constants.topSellerList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
