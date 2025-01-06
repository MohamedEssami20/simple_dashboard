import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_item.dart';

class CategoryItemsListView extends StatelessWidget {
  const CategoryItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: CategoryModel.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CategoryItem(
              title: CategoryModel.categories[index].name,
              image: CategoryModel.categories[index].image,
            ),
          );
        },
      ),
    );
  }
}
