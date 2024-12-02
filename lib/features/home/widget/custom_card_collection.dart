
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomCardCollection extends StatelessWidget {
  const CustomCardCollection({
    super.key,
  });

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
                    "assets/images/trending1.png",
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("3D cart"),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        ),
                        Text("200"),
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
