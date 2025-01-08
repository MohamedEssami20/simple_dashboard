import 'package:dashboard_two/helper/assets.dart';
import 'package:dashboard_two/helper/constant.dart';
import 'package:dashboard_two/helper/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CouponButton extends StatelessWidget {
  const CouponButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(24),
        backgroundColor: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Constant.secondaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color(0xFFF8B602),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: SvgPicture.asset(Assets.assetsIconsCouponIcon),
            ),
            Text(
              'Have a coupon code?',
              style: FontStyles().medium14(context).copyWith(
                    color: Constant.black,
                  ),
            ),
            SvgPicture.asset(Assets.assetsIconsArrowBackIcon),
          ],
        ),
      ),
    );
  }
}
