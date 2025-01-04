import 'package:dashboard_two/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

import '../models/dashboard_item_model.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: DashboardItemModel.dashboardItem.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 38),
            child: DrawerItem(
              title: DashboardItemModel.dashboardItem[index].title,
              icon: DashboardItemModel.dashboardItem[index].icon,
              isSelected: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
