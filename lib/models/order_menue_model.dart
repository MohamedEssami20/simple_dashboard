import '../helper/assets.dart';

class OrderMenueModel {
  final String title;
  final String image;

  OrderMenueModel({required this.title, required this.image});

  static List<OrderMenueModel> orderMenue = [
    OrderMenueModel(title: 'Pepperoni Pizza', image: Assets.assetsIconsPizza1),
    OrderMenueModel(
        title: 'Cheese Burger', image: Assets.assetsIconsCheeseBurger),
    OrderMenueModel(title: 'Vegan Pizza', image: Assets.assetsIconsVeganPizza),
  ];
}
