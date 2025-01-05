import 'package:dashboard_two/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'dashboard_sectiion.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CsutsomDrawer(),
        ),
        const Expanded(
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
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}


