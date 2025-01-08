import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function(int)? onTap;

  const CustomBottomNavigationBar({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: onTap,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Assets.assetsIconsOrderDiscussionIcon),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Assets.assetsIconsNotificationIcon),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.assetsIconsSettingIcon,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              Assets.assetsIconsProfilePhoto,
              fit: BoxFit.fill,
            ),
            label: "Profile"),
      ],
    );
  }
}