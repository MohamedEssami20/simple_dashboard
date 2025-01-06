import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class Header extends StatelessWidget {
  const Header({
    super.key, required this.title, required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: FontStyles().bold24(context).copyWith(
                color: Constant.black,
              ),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              subTitle,
              style: FontStyles().regular18(context).copyWith(
                    color: Constant.secondaryColor,
                  ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
              color: Constant.secondaryColor,
              iconSize: 24,
            ),
          ],
        ),
      ],
    );
  }
}
