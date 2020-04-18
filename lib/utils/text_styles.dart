import 'package:flutter/material.dart';
import 'package:food_blog_project/utils/AppColors.dart';


class FontFamily {
  static String black = "Muli-Black";
  static String blackItalic = "Muli-BlackItalic";
  static String bold = "Muli-Bold";
  static String boldItalic = "Muli-BoldItalic";
  static String italic = "Muli-Italic";
  static String light = "Muli-Light";
  static String lightItalic = "Muli-LightItalic";
  static String medium = "Muli-Medium";
  static String mediumItalic = "Muli-MediumItalic";
  static String regular = "Muli-Regular";
}

class TextStyles {
  static TextStyle get snackBarText => TextStyle(
        fontFamily: FontFamily.medium,
        fontSize: 15,
        color: Colors.white,
        letterSpacing: 1.4,
        inherit: false,
      );

  static TextStyle get appName => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 26,
        color: AppColors.primary,
        shadows: [
          Shadow(
              // bottomLeft
              offset: Offset(-1.5, -1.5),
              color: Colors.black),
          Shadow(
              // bottomRight
              offset: Offset(1.5, -1.5),
              color: Colors.black),
          Shadow(
              // topRight
              offset: Offset(1.5, 1.5),
              color: Colors.black),
          Shadow(
              // topLeft
              offset: Offset(-1.5, 1.5),
              color: Colors.black),
        ],
        letterSpacing: 5.0,
        inherit: false,
      );




  static TextStyle get largeBoldTextLabel => TextStyle(
      fontFamily: FontFamily.bold, fontSize: 16, color: Colors.black);


  static TextStyle get greyMediumTextLabel => TextStyle(
      fontFamily: FontFamily.bold, fontSize: 10, color: Colors.grey[400]);

  static TextStyle get greyPriceTextLabel => TextStyle(
      fontFamily: FontFamily.medium, fontSize: 15, color: Colors.grey[600]);

  static TextStyle get greySmallTextLabel => TextStyle(
        fontFamily: FontFamily.bold, fontSize: 11, color: Colors.grey);

  static TextStyle get smallButtonTextLabel => TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 11,
    color: Colors.white,
    inherit: false,
  );



}
