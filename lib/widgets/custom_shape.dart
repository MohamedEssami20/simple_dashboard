import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class CustomShape extends StatelessWidget {
  const CustomShape(
      {super.key, required this.title, this.titleColor, this.borderColor});
  final String title;
  final Color? titleColor, borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 32,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: borderColor ?? Constant.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: FontStyles().regular14(context).copyWith(
              color: titleColor ?? Constant.secondaryColor,
            ),
      ),
    );
  }
}
