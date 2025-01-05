import 'package:dashboard_two/helper/font_styles.dart';
import 'package:flutter/material.dart';

import '../helper/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 16, right: 8),
          child: Icon(
            Icons.search,
            color: Constant.secondaryColor,
            size: 32,
          ),
        ),
        hintText: "What do you want eat today...",
        hintStyle: FontStyles().regular18(context).copyWith(
              color: const Color(0xFFA098AE),
            ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(Colors.black),
        border: buildBorder(Colors.white),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
