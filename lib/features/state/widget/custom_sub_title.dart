import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';

class CustomSubTitle extends StatefulWidget {
  CustomSubTitle(
      {super.key,
      required this.title,
      required this.iconz,
      required this.isActive});
  final String title;
  final IconData iconz;
  bool isActive = false;

  @override
  State<CustomSubTitle> createState() => _CustomSubTitleState();
}

class _CustomSubTitleState extends State<CustomSubTitle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        //  padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  widget.iconz,
                  color: Colors.grey,
                ),
                Text(
                  widget.title,
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
            widget.isActive
                ? Container(
                    decoration:
                        BoxDecoration(color: Color(0xff976dff), boxShadow: [
                      BoxShadow(
                          color: Color(0xff976dff),
                          blurRadius: 16,
                          offset: Offset(0, -5),
                          spreadRadius: 1.5),
                    ]),
                    width: 106,
                    height: 3.6,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
