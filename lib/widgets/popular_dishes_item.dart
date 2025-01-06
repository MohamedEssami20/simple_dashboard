import 'package:flutter/material.dart';

import '../helper/constant.dart';
import 'popular_dishes_header.dart';

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
          PopularDishesHeader(),
        
        ],
      ),
    );
  }
}