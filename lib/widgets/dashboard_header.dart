import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hello, Patricia',
          style: FontStyles().bold36(context).copyWith(
                color: const Color(0xFF2E2E2E),
              ),
        ),
      ],
    );
  }
}
