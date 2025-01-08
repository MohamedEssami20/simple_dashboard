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
          spacing: 8,
          children: [
            const Expanded(
              child: Icon(Icons.location_on_outlined,
                  color: Constant.secondaryColor),
            ),
            Expanded(
              flex: 3,
              child: Text(
                'Elm Street, 23',
                style: FontStyles().bold18(context).copyWith(
                      color: Constant.black,
                    ),
              ),
            ),
            const Spacer(),
            const Expanded(
              flex: 2,
              child: CustomShape(
                title: "Change",
              ),
            ),
          ],
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
          style: FontStyles().regular14(context).copyWith(
                color: const Color(0xFFA098AE),
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: CustomShape(
                  title: "Add Details",
                  titleColor: Constant.black,
                  borderColor: Constant.black),
            ),
            Expanded(
              child: CustomShape(
                  title: "Add Note",
                  titleColor: Constant.black,
                  borderColor: Constant.black),
            ),
          ],
        ),
      ],
    );
  }
}
