import 'package:dashboard_two/helper/constant.dart';
import 'package:flutter/material.dart';

import '../helper/font_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 18),
        backgroundColor: Constant.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          'Checkout',
          style: FontStyles().medium18(context).copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
