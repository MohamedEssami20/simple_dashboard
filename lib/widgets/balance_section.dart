import 'package:dashboard_two/helper/assets.dart';
import 'package:dashboard_two/widgets/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          children: [
            Menue(),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}

