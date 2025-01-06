import 'package:dashboard_two/models/popular_dishes_model.dart';
import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class PopularDishesInfo extends StatelessWidget {
  const PopularDishesInfo({super.key, required this.popularDishesModel});
  final PopularDishesModel popularDishesModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 30,
      ),
      isThreeLine: true,
      title: Text(
        popularDishesModel.title,
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
              text: popularDishesModel.price.toString(),
              style: FontStyles().bold24(context).copyWith(
                    color: Constant.black,
                  ),
            ),
          ],
        ),
      ),
      trailing: Container(
        width: 40,
        height: 40,
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
