import 'package:flutter/material.dart';

import 'helper/size_config.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tabletLayout});
  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > SizeConfig.tabletWidth) {
        return desktopLayout(context);
      } else if (constraints.maxWidth > SizeConfig.mobileWidth) {
        return tabletLayout(context);
      } else {
        return mobileLayout(context);
      }
    });
  }
}
