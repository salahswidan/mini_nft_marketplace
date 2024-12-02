import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/model/collections_model.dart';

import '../../../core/resourses/color_managers.dart';

class CustomCardCollection extends StatelessWidget {
  const CustomCardCollection({
    super.key,
    required this.collectionModel,
  });
  final CollectionsModel collectionModel;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            width: 157,
            height: 195,
            color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
            child: Column(
              children: [
                Image(
                  height: 139,
                  image: AssetImage(
                    collectionModel.image,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      collectionModel.title,
                    ),
                    Row(
                      children: [
                        collectionModel.isActiveLike
                            ? Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                              )
                            : Icon(
                                CupertinoIcons.heart,
                                color: Colors.grey[350],
                              ),
                        Text(collectionModel.countLike),
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
