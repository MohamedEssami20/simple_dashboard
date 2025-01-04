import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        //width: 252,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 24,
          right: 50,
        ),
        decoration: ShapeDecoration(
          color: Constant.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0C2E2E2E),
              blurRadius: 50,
              offset: Offset(0, 20),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.assetsIconsRestaurantLocationIcon,
              width: 40,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              'Dashboard',
              style:
                  FontStyles().medium18(context).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
