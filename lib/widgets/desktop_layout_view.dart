import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Desktop Layout',
        style: FontStyles().regular18(context),
      ),
    );
  }
}
