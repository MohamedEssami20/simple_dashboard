import 'package:dashboard_two/widgets/menue.dart';
import 'package:dashboard_two/widgets/order_menue_section.dart';
import 'package:flutter/material.dart';
import 'address_details.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Menue(),
              SizedBox(
                height: 32,
              ),
              BalanceCard(),
              SizedBox(
                height: 32,
              ),
              AddressDetails(),
              SizedBox(
                height: 32,
              ),
              OrderMenueSection(),
            ],
          ),
        ),
      ),
    );
  }
}
