import 'package:dashboard_two/helper/assets.dart';
import 'package:flutter/material.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class RecentOrderItem extends StatelessWidget {
  const RecentOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 336 / 363,
      child: Container(
        padding: const EdgeInsets.only(top: 30, right: 30),
        width: 336,
        color: Constant.primaryColor,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border_outlined),
              ],
            ),
            Image.asset(Assets.assetsIconsPizza1),
            const SizedBox(height: 8),
            Text(
              'Fish Burger',
              textAlign: TextAlign.center,
              style: FontStyles().medium18(context).copyWith(
                    color: const Color(0xFF2E2E2E),
                  ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '\$',
                      style: FontStyles().bold24(context).copyWith(
                            color: Constant.secondaryColor,
                          )),
                  TextSpan(
                    text: '5.59',
                    style: FontStyles().bold24(context).copyWith(
                          color: Constant.black,
                        ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.97 km',
                  style: FontStyles().regular18(context).copyWith(
                        color: const Color(0xFFA098AE),
                      ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 6,
                  height: 6,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFC4C4C4),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '21 min',
                  style: FontStyles().regular18(context).copyWith(
                        color: const Color(0xFFA098AE),
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
