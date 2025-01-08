import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class ServicePrice extends StatelessWidget {
  const ServicePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Service',
          style: FontStyles().medium14(context).copyWith(
                color: const Color(0xFFA098AE),
              ),
        ),
        const Spacer(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '+',
                  style: FontStyles().medium18(context).copyWith(
                        color: Constant.black,
                      )),
              TextSpan(
                text: '\$',
                style: FontStyles().medium18(context).copyWith(
                      color: Constant.secondaryColor,
                    ),
              ),
              TextSpan(
                text: '1.00',
                style: FontStyles().medium18(context).copyWith(
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