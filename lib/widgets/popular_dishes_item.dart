import 'package:dashboard_two/models/popular_dishes_model.dart';
import 'package:flutter/material.dart';
import '../helper/constant.dart';
import 'popular_dishes_header.dart';
import 'popular_dishes_info.dart';

class PopularDishesItem extends StatelessWidget {
  const PopularDishesItem({super.key, required this.popularDishesModel});
  final PopularDishesModel popularDishesModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 320 / 350,
      child: Container(
        padding: const EdgeInsets.only(top: 30, right: 30),
        color: Constant.primaryColor,
        child: Column(
          children: [
            const PopularDishesHeader(),
            Image.asset(popularDishesModel.image),
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
            PopularDishesInfo(
              popularDishesModel: popularDishesModel,
            ),
          ],
        ),
      ),
    );
  }
}
