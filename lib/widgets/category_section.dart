import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Category',
              style: FontStyles().bold24(context).copyWith(
                    color: Constant.black,
                  ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  'View all',
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
        )
      ],
    );
  }
}
