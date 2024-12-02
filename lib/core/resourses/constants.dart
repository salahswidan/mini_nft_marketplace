import 'package:flutter/foundation.dart';
import 'package:mini_nft_marketplace/model/category_model.dart';
import 'package:mini_nft_marketplace/model/collections_model.dart';
import 'package:mini_nft_marketplace/model/top_seller_model.dart';

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
  static List<TopSellerModel> topSellerList = [
    TopSellerModel(
        title: "Abstract Art",
        subTitle: "abstract #25215",
        image: 'assets/images/topSeller1.png',
        isActiveLike: false,
        countLike: "200",
        num1: "0.906"),
    TopSellerModel(
        title: "Wave",
        subTitle: "wavepi #3492",
        image: 'assets/images/topSeller2.png',
        isActiveLike: true,
        countLike: "2782",
        num1: "0.32"),
    TopSellerModel(
        title: "Abstract Pink",
        subTitle: "abstract #35635",
        image: 'assets/images/topSeller3.png',
        isActiveLike: false,
        countLike: "2234",
        num1: "0.534"),
  ];
}
