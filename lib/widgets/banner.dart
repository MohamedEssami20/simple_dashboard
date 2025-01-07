import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 930 / 260,
      child: Container(
        decoration: ShapeDecoration(
          color: Constant.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              right: 172,
              child: SvgPicture.asset(Assets.assetsIconsBannerCurveTop),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(Assets.assetsIconsBannerCurveRightBottom),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset(Assets.assetsIconsBannerCurveLeftBottom),
            ),
            Positioned(
              bottom: 0,
              right: 25,
              child: Image.asset(
                Assets.assetsIconsImageWoman,
                alignment: Alignment.bottomLeft,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.width * 0.14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42, left: 50),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Discount Voucher\nUp To 20%  ',
                      style: FontStyles()
                          .bold32(context)
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \n sed do eiusmod tempor incididunt. ',
                        style: FontStyles()
                            .regular14(context)
                            .copyWith(color: Colors.white),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
