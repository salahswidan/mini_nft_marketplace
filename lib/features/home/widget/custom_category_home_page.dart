import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';

class custom_category_home_page extends StatelessWidget {
  custom_category_home_page({
    
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(27),
            child: Image.asset(
             image,
              height: 167,
              width: 252,
            )),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(27),
                bottomRight: Radius.circular(27)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff000000).withOpacity(0.1),
                      Color(0xff000000).withOpacity(0.45),
                    ],
                  )),
                  height: 54,
                  width: 252,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 19.82,
                        fontFamily: FontManagers.KMain,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
