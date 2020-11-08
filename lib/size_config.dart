import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get proporionate screen height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is standard height size used by designers
  return (inputHeight / 812.0) * screenHeight;
}

// Get proportionate screen width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screeWidth = SizeConfig.screenWidth;
  // 375 is the standard height used by designers
  return (inputWidth / 375.0) * screeWidth;
}
