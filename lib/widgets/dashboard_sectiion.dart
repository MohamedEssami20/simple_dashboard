import 'package:flutter/material.dart';

import 'dashboard_header.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DashboardHeader(),
        ),
      ],
    );
  }
}