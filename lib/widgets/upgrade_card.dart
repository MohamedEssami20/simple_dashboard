import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class UpgradeCard extends StatelessWidget {
  const UpgradeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 252 / 210,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16),
        decoration: ShapeDecoration(
          color: Constant.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      'Upgrade your\nAccount to Get\n Free Voucher',
                      style: FontStyles().bold18(context).copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                        )),
                    onPressed: () {},
                    child: Text(
                      'Upgrade',
                      style: FontStyles().semiBold14(context).copyWith(),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(
                Assets.assetsIconsCruveCard,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: SvgPicture.asset(
                  Assets.assetsIconsVectorDots,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
