import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;
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
            side: const BorderSide(
                color: Color.fromARGB(255, 212, 209, 213), width: 0.8),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            const SizedBox(
              height: 16,
            ),
            Text(
              title,
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
