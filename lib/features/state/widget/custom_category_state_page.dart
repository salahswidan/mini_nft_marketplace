import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';

class CustomCategoryStatesPage extends StatelessWidget {
  CustomCategoryStatesPage({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            SizedBox(
              width: 1,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: FontManagers.KMain,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      // height: 39,
      // width: 147,
      decoration: BoxDecoration(
        color: Color(0xff976dff).withOpacity(.12),
        border: Border.all(color: Color(0xff976dff)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
