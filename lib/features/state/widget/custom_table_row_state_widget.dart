import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';

class CustomTableRowStateWidget extends StatelessWidget {
  const CustomTableRowStateWidget(
      {super.key,
      required this.title,
      required this.percent,
      required this.image,
      required this.name,
      required this.subName,
      required this.count1});
  final String title;
  final String image;
  final String name;
  final String subName;
  final String count1;
  final String percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                image,
                height: 39,
                width: 39,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Container(
              height: 39,
              width: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: FontManagers.KMain,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                  Text(
                    subName,
                    style:
                        TextStyle(fontFamily: FontManagers.KMain, fontSize: 11),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(
                      CupertinoIcons.link,
                      size: 15,
                    ),
                    Text(
                      count1,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                Text(
                  percent,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
