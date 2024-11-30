
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../../../core/resourses/font_managers.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(31),
          child: Column(children: [
            Text(
              textAlign: TextAlign.center,
              "Explore the world of NFTs",
              style: TextStyle(
                fontSize: 19.82,
                fontFamily: FontManagers.KMain,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              textAlign: TextAlign.center,
              "You can buy and sell NFTs of the \n best artists in the world",
              style: TextStyle(color: Colors.grey[350]),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: 198.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: ColorManagers.kPrimaryWhite,
                  )),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text("Get Started Now"),
                  ),
                ),
              ),
            )
          ]),
          width: 306,
          height: 191,
          color: ColorManagers.kPrimaryWhite.withOpacity(0.1),
        ),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    );
  }
}
