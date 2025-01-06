
import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class PopularDishesHeader extends StatelessWidget {
  const PopularDishesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 96,
          height: 32,
          alignment: Alignment.center,
          decoration: const ShapeDecoration(
            color: Color(0xFFEB5757),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
          child: Text(
            '15% Off',
            textAlign: TextAlign.center,
            style: FontStyles().regular18(context).copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}