import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_nft_marketplace/model/table_row_model.dart';

import '../../home/widget/custom_bottom_nav_bar.dart';
import '../../home/widget/custom_sub_title.dart';
import '../widget/custom_category_state_page.dart';
import '../widget/custom_sub_title.dart';
import '../widget/custom_table_row_state_widget.dart';

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
    double listHight = MediaQuery.of(context).size.height - 360;
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
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    //  height: listHight,
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(25),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          CustomTableRowStateWidget(
                        tableRowModel: TableRowModel(
                          title: index.toString(),
                          image: "assets/images/image(1).png",
                          name: "Azumi $index",
                          subName: "view info  $index -100 ",
                          count1: "200055.02 $index * 10",
                          percent: "3.99% + $index",
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 9,
                      ),
                      itemCount: 10,
                    ),
                    color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
