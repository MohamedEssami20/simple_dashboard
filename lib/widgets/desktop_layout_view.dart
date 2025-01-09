import 'package:dashboard_two/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'balance_section.dart';
import 'dashboard_sectiion.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 56,
            ),
            child: DashboardSection(),
          ),
        ),
        Expanded(
          flex: 3,
          child: BalanceSection(),
        ),
      ],
    );
  }
}
