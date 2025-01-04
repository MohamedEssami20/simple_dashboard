import '../helper/assets.dart';

class DashboardItemModel {
  final String title;
  final String icon;

  DashboardItemModel({
    required this.title,
    required this.icon,
  });

  static List<DashboardItemModel> dashboardItem = [
    DashboardItemModel(
      title: 'Dashboard',
      icon: Assets.assetsIconsRestaurantLocationIcon,
    ),
    DashboardItemModel(
      title: "favorite",
      icon: Assets.assetsIconsFavoriteIcon,
    ),
    DashboardItemModel(
      title: "Message",
      icon: Assets.assetsIconsMessageIcon,
    ),
    DashboardItemModel(
      title: "Order History",
      icon: Assets.assetsIconsOrderHistoryIcon,
    ),
    DashboardItemModel(
      title: "Bills",
      icon: Assets.assetsIconsBillsIcon,
    ),
    DashboardItemModel(
      title: "Settings",
      icon: Assets.assetsIconsSettingIcon,
    ),
  ];
}
