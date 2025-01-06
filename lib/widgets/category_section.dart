import 'package:flutter/material.dart';
import 'category_items_list_view.dart';
import 'header.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Header(title: 'Category',subTitle: "View all",),
        SizedBox(
          height: 24,
        ),
        CategoryItemsListView(),
      ],
    );
  }
}
