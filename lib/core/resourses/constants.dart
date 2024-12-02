import 'package:flutter/foundation.dart';
import 'package:mini_nft_marketplace/model/category_model.dart';
import 'package:mini_nft_marketplace/model/collections_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel(
      title: 'Art',
      image: 'assets/images/image(1).png',
    ),
    CategoryModel(
      title: 'music',
      image: 'assets/images/image(2).png',
    ),
    CategoryModel(
      title: 'virtual',
      image: 'assets/images/image(3).png',
    ),
  ];
  static List<CollectionsModel> collectionList = [
    CollectionsModel(
      title: '3d Art',
      image: 'assets/images/trending1.png',
      isActiveLike: true,
      countLike: "2.3k",
    ),
    CollectionsModel(
      title: 'Portrait Art',
      image: 'assets/images/trending2.png',
      isActiveLike: false,
      countLike: "479k",
    ),
    CollectionsModel(
      title: 'Abstract Art',
      image: 'assets/images/trending3.png',
      isActiveLike: true,
      countLike: "213k",
    ),
  ];
}
