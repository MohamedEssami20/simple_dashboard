import 'package:flutter/material.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';
import '../models/order_menue_model.dart';

class OrderMenueItem extends StatelessWidget {
  const OrderMenueItem({super.key, required this.orderMenueModel});
  final OrderMenueModel orderMenueModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 4,
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      leading: Image(
        image: AssetImage(orderMenueModel.image),
        width: 60,
        height: 50,
      ),
      title: Text(orderMenueModel.title),
      subtitle: const Text('x1'),
      titleTextStyle: FontStyles().semiBold18(context).copyWith(
            color: Constant.black,
          ),
      subtitleTextStyle: FontStyles().regular14(context).copyWith(
            color: const Color(0xFFA098AE),
          ),
      trailing: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '+',
              style: FontStyles().semiBold18(context).copyWith(
                    color: Constant.black,
                  ),
            ),
            TextSpan(
              text: '\$',
              style: FontStyles().semiBold18(context).copyWith(
                    color: Constant.secondaryColor,
                  ),
            ),
            TextSpan(
              text: '5.59',
              style: FontStyles().semiBold18(context).copyWith(
                    color: Constant.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
