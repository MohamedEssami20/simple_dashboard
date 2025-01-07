import 'package:flutter/material.dart';

import '../helper/constant.dart';
import '../helper/font_styles.dart';
import 'custom_shape.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Address',
          style: FontStyles().regular14(context).copyWith(
                color: const Color(0xFFA098AE),
              ),
        ),
        Row(
          children: [
            const Icon(Icons.location_on_outlined,
                color: Constant.secondaryColor),
            Text(
              'Elm Street, 23',
              style: FontStyles().bold18(context).copyWith(
                    color: Constant.black,
                  ),
            ),
            const Spacer(),
            const CustomShape(
              title: "Change",
            ),
          ],
        )
      ],
    );
  }
}
