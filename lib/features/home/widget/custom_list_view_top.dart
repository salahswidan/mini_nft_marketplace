
import 'package:flutter/material.dart';

import '../../../core/resourses/constants.dart';
import 'custom_category_home_page.dart';

class customListViewTop extends StatelessWidget {
  const customListViewTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => customCategoryHomePage(
            title: Constants.categoryList[index].title,
            image: Constants.categoryList[index].image),
      ),
    );
  }
}
