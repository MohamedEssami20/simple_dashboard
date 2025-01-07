import 'package:dashboard_two/widgets/banner.dart';
import 'package:dashboard_two/widgets/recent_order.dart';
import 'package:flutter/material.dart';
import 'category_section.dart';
import 'dashboard_header.dart';
import 'popular_dishes.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
    
      slivers: [
        SliverToBoxAdapter(
          child: DashboardHeader(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
        SliverToBoxAdapter(
          child: BannerWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: CategorySection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: PopularDishes(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: RecentOrder(),
        ),
      ],
    );
  }
}
