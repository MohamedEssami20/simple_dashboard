import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';

class CsutsomDrawer extends StatelessWidget {
  const CsutsomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: double.infinity,
      color: Constant.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'GoMeal',
                  style: FontStyles().bold40(context).copyWith(
                        color: const Color(0xFF2E2E2E),
                      ),
                ),
                TextSpan(
                  text: '.',
                  style: FontStyles()
                      .bold40(context)
                      .copyWith(color: Constant.secondaryColor),
                ),
              ],
            ),
          ),
           const SizedBox(height: 62,), 
        ],
      ),
    );
  }
}

