import 'package:flutter/material.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class OrderMenueItem extends StatelessWidget {
  const OrderMenueItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 4,
      leading: const Image(
        image: AssetImage(Assets.assetsIconsCheeseBurger),
      ),
      title: const Text('Pepperoni Pizza'),
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
