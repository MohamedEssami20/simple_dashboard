import 'package:flutter/material.dart';
import 'header.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Header(
          title: 'Recent Order',
          subTitle: "View all",
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}


