import 'package:dashboard_two/helper/assets.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });


  static List<CategoryModel> categories=[
    CategoryModel(name: 'Bakery', image: Assets.assetsIconsBakedIcon),
    CategoryModel(name: 'Burger', image: Assets.assetsIconsBurgerIcon),
    CategoryModel(name: 'Beverage', image: Assets.assetsIconsCoffeeIcon),
    CategoryModel(name: 'Chicken', image: Assets.assetsIconsChickenIcon),
    CategoryModel(name: 'Pizza', image: Assets.assetsIconsPizzaIcon),
    CategoryModel(name: 'Seafood', image: Assets.assetsIconsFishIcon),
  ];
}