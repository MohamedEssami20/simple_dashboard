import 'package:dashboard_two/helper/assets.dart';

class PopularDishesModel {
  final String image;
  final String title;
  final String price;

  static List<PopularDishesModel> popularDishes = [
    PopularDishesModel(
        image: Assets.assetsIconsFishBurger,
        title: "fish burger",
        price: "5.59"),
    PopularDishesModel(
        image: Assets.assetsIconsBeefBurger,
        title: "beef burger",
        price: "5.59"),
    PopularDishesModel(
        image: Assets.assetsIconsCheeseBurger,
        title: "cheese burger",
        price: "5.59"),
  ];

  PopularDishesModel(
      {required this.image, required this.title, required this.price});
}
