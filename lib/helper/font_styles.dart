import 'package:flutter/material.dart';

class FontStyles {
  TextStyle regular18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 18),
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle medium18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 18),
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle medium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 14),
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle bold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 24),
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 14),
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle regular11(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 11),
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 18),
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle bold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 18),
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle bold32(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 32),
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle bold36(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 36),
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle semiBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 14),
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle bold40(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 40),
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle medium24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 24),
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  double getResponsiveText(BuildContext context, double fontSize) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    double result = responsiveFontSize.clamp(lowerLimit, upperLimit);
    return result;
  }

  double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1500;
    }
  }
}
