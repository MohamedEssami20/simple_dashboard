import 'package:dashboard_two/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';
import '../adabtive_layout.dart';
import '../helper/size_config.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/desktop_layout_view.dart';
import '../widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer:
            screenWidth <= SizeConfig.tabletWidth ? const CustomDrawer() : null,
        appBar:
            screenWidth <= SizeConfig.tabletWidth ? const CustomAppBar() : null,
        body: AdabtiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          desktopLayout: (context) => const DesktopLayoutView(),
          tabletLayout: (context) => const TabletLayout(),
        ),
        bottomNavigationBar: screenWidth <= SizeConfig.tabletWidth
            ? const CustomBottomNavigationBar()
            : null);
  }
}
