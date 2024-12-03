import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/route_managers.dart';

import '../../../core/resourses/color_managers.dart';

class customBottomNavBar extends StatelessWidget {
  const customBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.KStatePage);
                      },
                      child: Icon(
                        Icons.stacked_bar_chart_rounded,
                        color: ColorManagers.kPrimaryWhite,
                        size: 39,
                      ),
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
    );
  }
}
