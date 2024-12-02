import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_nft_marketplace/model/collections_model.dart';
import 'package:mini_nft_marketplace/model/top_seller_model.dart';

import '../../../core/resourses/color_managers.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({
    super.key,
    required this.topSellerModel,
  });
  final TopSellerModel topSellerModel;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            width: 180,
            height: 243,
            color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 139,
                  width: 230,
                  image: AssetImage(
                    topSellerModel.image,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  topSellerModel.title,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: ColorManagers.kPrimaryWhite,
                      fontFamily: FontManagers.KMain),
                ),
                Text(
                  topSellerModel.subTitle,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontFamily: FontManagers.KMain),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.gift_fill,
                    ),
                    Text(
                      topSellerModel.num1,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        topSellerModel.isActiveLike
                            ? Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                              )
                            : Icon(
                                CupertinoIcons.heart,
                                color: Colors.grey[350],
                              ),
                        Text(topSellerModel.countLike),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
