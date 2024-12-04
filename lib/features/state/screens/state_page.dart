import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_managers.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';

import '../../home/widget/custom_bottom_nav_bar.dart';

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
                  bottom: BorderSide(color: Color(0xff97A9F6), width: 0.7)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.stacked_bar_chart,
                            color: Colors.grey,
                          ),
                          Text(
                            "Ranking",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontManagers.KMain,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color(0xff976dff),
                        width: 106,
                        height: 3.6,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.sports_gymnastics_outlined,
                      color: Colors.grey,
                    ),
                    Text(
                      "Activity",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: FontManagers.KMain,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
