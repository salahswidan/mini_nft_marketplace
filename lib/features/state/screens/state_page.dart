import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../home/widget/custom_bottom_nav_bar.dart';
import '../../home/widget/custom_sub_title.dart';
import '../widget/custom_sub_title.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManagers.kPrimary,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(Icons.more_horiz_outlined),
          )
        ],
        backgroundColor: ColorManagers.kPrimary,
        centerTitle: true,
        title: Text("Stats"),
      ),
      bottomNavigationBar: customBottomNavBar(),
      body: Column(
        children: [
          Container(
            //  padding: const EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xff97A9F6), width: 0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSubTitle(
                  title: "Ranking",
                  iconz: Icons.leaderboard_outlined,
                  isActive: true,
                ),
                CustomSubTitle(
                  title: "Activity",
                  iconz: Icons.sports_gymnastics_outlined,
                  isActive: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
