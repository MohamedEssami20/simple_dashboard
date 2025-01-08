import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/assets.dart';

class Menue extends StatelessWidget {
  const Menue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
            child: SvgPicture.asset(Assets.assetsIconsOrderDiscussionIcon)),
        Expanded(child: SvgPicture.asset(Assets.assetsIconsNotificationIcon)),
        Expanded(
          child: SvgPicture.asset(
            Assets.assetsIconsSettingIcon,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Expanded(
          child: Image.asset(
            Assets.assetsIconsProfilePhoto,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
