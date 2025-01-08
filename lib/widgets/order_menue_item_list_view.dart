import 'package:flutter/material.dart';

import '../models/order_menue_model.dart';
import 'order_menue_item.dart';

class OrderMenueItemListView extends StatelessWidget {
  const OrderMenueItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: OrderMenueModel.orderMenue.asMap().entries.map((entry) {
          var value = entry.value;
          return OrderMenueItem(orderMenueModel: value);
        }).toList(),
      ),
    );
  }
}