import 'package:flutter/material.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';
import 'income_and_profit.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 20,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      'Balance',
                      style: FontStyles().regular14(context).copyWith(
                            color: Constant.black,
                          ),
                    ),
                  ),
                  Text(
                    '\$12.000',
                    style: FontStyles().bold32(context).copyWith(
                          color: Constant.black,
                        ),
                  ),
                ],
              ),
            ),
            const IncomeAndProfit(
                title: 'Top Up', image: Assets.assetsIconsIncomeIcon),
            const IncomeAndProfit(
                title: 'Transfer', image: Assets.assetsIconsProfitIcon),
          ],
        ),
      ),
    );
  }
}
