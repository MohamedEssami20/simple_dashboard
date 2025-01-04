import 'package:flutter/material.dart';

class FontStyles {
   TextStyle regular14(BuildContext context) {
    return  TextStyle(
      fontSize: getResponsiveText(context, 14),
      color: Colors.black,
      fontFamily: "Aeonik Pro TRIAL",
      fontWeight: FontWeight.w400,
    );
  }

TextStyle regular12(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 12),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular22(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 22),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular9(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 9),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 16),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular10(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 10),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular28(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 28),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
  );
}

TextStyle regular32(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveText(context, 32),
    color: Colors.black,
    fontFamily: "Aeonik Pro TRIAL",
    fontWeight: FontWeight.w400,
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
