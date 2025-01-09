import 'package:dashboard_two/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hello, Patricia',
          style: FontStyles().bold36(context).copyWith(
                color: const Color(0xFF2E2E2E),
              ),
        ),
        MediaQuery.sizeOf(context).width > 1000
            ? const SizedBox(width: 200)
            : const SizedBox(width: 30),
        const Expanded(child: CustomTextField()),
      ],
    );
  }
}
