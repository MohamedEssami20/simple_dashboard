import 'package:dashboard_two/helper/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24,
      children: [
        Text(
          'Your Balance',
          style: FontStyles().bold24(context).copyWith(
                color: Constant.black,
              ),
        ),
        Container(
          width: 375,
          height: 165,
          decoration: const BoxDecoration(
            color: Color(0xFFF8B602),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: SvgPicture.asset(Assets.assetsIconsCardCurveLeft),
                ),
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                  ),
                  child: SvgPicture.asset(Assets.assetsIconsCardCurveBottom),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
