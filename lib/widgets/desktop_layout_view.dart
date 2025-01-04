import 'package:dashboard_two/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CsutsomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ],
    );
  }
}
