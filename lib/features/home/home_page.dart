import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../core/resourses/color_managers.dart';
import 'widget/custom_card_collection.dart';
import 'widget/custom_card_top_seller.dart';
import 'widget/custom_list_view_top.dart';
import 'widget/custom_sub_title.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            customListViewTop(),
            SizedBox(
              height: 27,
            ),
            customSubTitle(
              title: "Treaning Collections",
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 197,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardCollection(
                  collectionModel: Constants.collectionList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 28,
                ),
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 27,
            ),
            customSubTitle(
              title: "Top Seller",
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 243,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                  topSellerModel: Constants.topSellerList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 28,
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
