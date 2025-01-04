import 'package:dashboard_two/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

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
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.red,
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
