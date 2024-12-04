
import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';

class CustomSubTitle extends StatelessWidget {
  final String title;
  final IconData iconz;
  final bool isActive;
  final VoidCallback onTap;

  const CustomSubTitle({
    super.key,
    required this.title,
    required this.iconz,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconz,
                color: isActive ? Colors.purple : Colors.grey,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: FontManagers.KMain,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          isActive
              ? Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff976dff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff976dff),
                        blurRadius: 16,
                        offset: const Offset(0, -5),
                        spreadRadius: 1.5,
                      ),
                    ],
                  ),
                  width: 106,
                  height: 3.6,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
