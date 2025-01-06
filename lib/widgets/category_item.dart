import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(32),
        decoration: ShapeDecoration(
          color: Constant.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.assetsIconsBakedIcon),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Baked',
              style: FontStyles().regular18(context).copyWith(
                    color: const Color(0xFFA098AE),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
