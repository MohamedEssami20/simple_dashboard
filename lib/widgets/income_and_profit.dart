import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/font_styles.dart';

class IncomeAndProfit extends StatelessWidget {
  const IncomeAndProfit({
    super.key,
    required this.title,
    required this.image,
  });
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      spacing: 16,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: SvgPicture.asset(
            image,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: FontStyles().regular14(context).copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ],
    );
  }
}
