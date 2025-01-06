import 'package:dashboard_two/helper/assets.dart';
import 'package:flutter/material.dart';
import '../helper/constant.dart';
import 'popular_dishes_header.dart';
import 'popular_dishes_info.dart';

class PopularDishesItem extends StatelessWidget {
  const PopularDishesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 30),
      width: 336,
      height: 363,
      color: Constant.primaryColor,
      child: Column(
        children: [
          const PopularDishesHeader(),
          Image.asset(Assets.assetsIconsFishBurger),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(
                5,
                (index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.star,
                      color: Constant.secondaryColor,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          const PopularDishesInfo(),
        ],
      ),
    );
  }
}

