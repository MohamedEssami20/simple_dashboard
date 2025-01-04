import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Patricia',
        style: FontStyles().bold36(context),
      ),
    );
  }
}
