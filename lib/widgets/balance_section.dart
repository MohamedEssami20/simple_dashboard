import 'package:dashboard_two/widgets/coupon_button.dart';
import 'package:dashboard_two/widgets/custom_button.dart';
import 'package:dashboard_two/widgets/menue.dart';
import 'package:dashboard_two/widgets/order_menue_section.dart';
import 'package:dashboard_two/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'address_details.dart';
import 'balance_card.dart';
import 'service_price.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 56, right: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  visible: MediaQuery.sizeOf(context).width > 1000,
                  child: const Menue()),
              const SizedBox(
                height: 32,
              ),
              const BalanceCard(),
              const SizedBox(
                height: 32,
              ),
              const AddressDetails(),
              const SizedBox(
                height: 32,
              ),
              const OrderMenueSection(),
              const Divider(
                color: Color(0xFFDADADA),
                thickness: 1,
              ),
              const SizedBox(
                height: 32,
              ),
              const ServicePrice(),
              const SizedBox(
                height: 32,
              ),
              const TotalPrice(),
              const SizedBox(
                height: 40,
              ),
              const CouponButton(),
              const SizedBox(
                height: 32,
              ),
              const CustomButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
