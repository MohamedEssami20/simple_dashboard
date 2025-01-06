import 'package:flutter/material.dart';
import 'header.dart';
import 'popular_dishes_items_list_view.dart';

class PopularDishes extends StatelessWidget {
  const PopularDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Header(
          title: 'Popular Dishes',
          subTitle: "View all",
        ),
        SizedBox(
          height: 24,
        ),
        PopularDishesListView(),
      ],
    );
  }
}

