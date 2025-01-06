import 'package:flutter/material.dart';

import '../models/popular_dishes_model.dart';
import 'popular_dishes_item.dart';

class PopularDishesListView extends StatelessWidget {
  const PopularDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 363,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: PopularDishesModel.popularDishes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: PopularDishesItem(
              popularDishesModel: PopularDishesModel.popularDishes[index],
            ),
          );
        },
      ),
    );
  }
}
