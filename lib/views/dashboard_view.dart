import 'package:flutter/material.dart';

import '../adabtive_layout.dart';
import '../widgets/desktop_layout_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdabtiveLayout(
        mobileLayout: (context) => const SizedBox (),
        desktopLayout: (context) => const DesktopLayoutView(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}

class CsutsomDrawer extends StatelessWidget {
  const CsutsomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: double.infinity,
      color: Colors.black,
      child: const Column(
        children: [
        
      ]),
    );
  }
}

