import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class PopularDishesInfo extends StatelessWidget {
  const PopularDishesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 30,
      ),
      isThreeLine: true,
      title: Text(
        'Fish Burger',
        style: FontStyles().medium18(context).copyWith(
              color: Constant.black,
            ),
      ),
      subtitle: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '\$',
              style: FontStyles().bold24(context).copyWith(
                    color: Constant.secondaryColor,
                  ),
            ),
            TextSpan(
              text: '5.59',
              style: FontStyles().bold24(context).copyWith(
                    color: Constant.black,
                  ),
            ),
          ],
        ),
      ),
      trailing: Container(
        width: 48,
        height: 48,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: Constant.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }
}
