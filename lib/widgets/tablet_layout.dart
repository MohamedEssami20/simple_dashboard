import 'package:dashboard_two/widgets/banner.dart';
import 'package:dashboard_two/widgets/dashboard_header.dart';
import 'package:flutter/material.dart';
import 'balance_section.dart';
import 'category_section.dart';
import 'popular_dishes.dart';
import 'recent_order.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: CustomScrollView(
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
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: BalanceSection(),
          ),
        ],
      ),
    );
  }
}
