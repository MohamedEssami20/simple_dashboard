import 'package:dashboard_two/helper/assets.dart';

class RecentOrderModel {
  final String image;
  final String title;
  final String price;

  RecentOrderModel(
      {required this.image, required this.title, required this.price});

  static List<RecentOrderModel> recentOrders = [
    RecentOrderModel(
      image: Assets.assetsIconsPizza1,
      title: "fish burger",
      price: "5.59",
    ),
    RecentOrderModel(
      image: Assets.assetsIconsPizza2,
      title: "Japan Ramen",
      price: "5.58",
    ),
    RecentOrderModel(
      image: Assets.assetsIconsPlateFood,
      title: "Fried Rice",
      price: "5.10",
    ),
  ];
}
