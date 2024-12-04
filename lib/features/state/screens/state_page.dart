import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../home/widget/custom_bottom_nav_bar.dart';
import '../../home/widget/custom_sub_title.dart';
import '../widget/custom_category_state_page.dart';
import '../widget/custom_sub_title.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  int activeTabIndex = 0;

  void setActiveTab(int index) {
    setState(() {
      activeTabIndex = index;
    });
  }

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
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xff97A9F6), width: 0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSubTitle(
                  title: "Ranking",
                  iconz: Icons.leaderboard_outlined,
                  isActive: activeTabIndex == 0,
                  onTap: () => setActiveTab(0),
                ),
                CustomSubTitle(
                  title: "Activity",
                  iconz: Icons.sports_gymnastics_outlined,
                  isActive: activeTabIndex == 1,
                  onTap: () => setActiveTab(1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCategoryStatesPage(
                title: "All Categories",
                icon: Icons.reorder,
              ),
              CustomCategoryStatesPage(
                title: "All Chains",
                icon: Icons.link,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
