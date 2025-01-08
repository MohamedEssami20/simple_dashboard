import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Total',
          style: FontStyles().medium24(context).copyWith(
                color: Constant.black,
              ),
        ),
        const Spacer(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '\$',
                style: FontStyles().medium24(context).copyWith(
                      color: Constant.secondaryColor,
                    ),
              ),
              TextSpan(
                text: '5.59',
                style: FontStyles().medium24(context).copyWith(
                      color: Constant.black,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
