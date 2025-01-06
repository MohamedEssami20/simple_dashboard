import 'package:dashboard_two/models/recent_order_model.dart';
import 'package:flutter/material.dart';

import 'recent_order_item.dart';

class RecentOrderItemsListView extends StatelessWidget {
  const RecentOrderItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: RecentOrderModel.recentOrders.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(right: 16),
            child: RecentOrderItem(
              recentOrderModel: RecentOrderModel.recentOrders[index],
            ),
          );
        },
      ),
    );
  }
}