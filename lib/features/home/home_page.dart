import 'dart:ui';

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
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
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
          Container(
            height: 50,
            width: 20,
            color: Colors.red,
          )
        ],
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
