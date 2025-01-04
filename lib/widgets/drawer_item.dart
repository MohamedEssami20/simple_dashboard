import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../helper/constant.dart';
import '../helper/font_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.isSelected});
  final String title, icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 252,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: ShapeDecoration(
        color: isSelected ? Constant.secondaryColor : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C2E2E2E),
            blurRadius: 50,
            offset: Offset(0, 20),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : Constant.drawerColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 24),
          Text(
            title,
            style: FontStyles().medium18(context).copyWith(
                  color: isSelected ? Colors.white : Constant.drawerColor,
                ),
          ),
        ],
      ),
    );
  }
}
