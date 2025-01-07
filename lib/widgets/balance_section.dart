
import 'package:dashboard_two/widgets/menue.dart';
import 'package:flutter/material.dart';
import 'balance_card.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 40, top: 56, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Menue(),
            SizedBox(
              height: 32,
            ),
            BalanceCard(),
          ],
        ),
      ),
    );
  }
}