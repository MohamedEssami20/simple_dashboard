import 'package:dashboard_two/widgets/order_menue_item.dart';
import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class OrderMenueSection extends StatelessWidget {
  const OrderMenueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24,
      children: [
        Text(
          'Order Menu',
          style: FontStyles().bold24(context).copyWith(
                color: Constant.black,
              ),
        ),
        const OrderMenueItem(),
      ],
    );
  }
}
