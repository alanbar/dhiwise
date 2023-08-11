import 'package:flutter/material.dart';
import 'package:alan_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillDeeppurpleA4000c => BoxDecoration(
        color: ColorConstant.deepPurpleA4000c,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.gray5001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000c1 => BoxDecoration();
  static BoxDecoration get fillDeeporange5000c => BoxDecoration(
        color: ColorConstant.deepOrange5000c,
      );
  static BoxDecoration get outlineGray9005e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray9005e,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillLightblue4000c => BoxDecoration(
        color: ColorConstant.lightBlue4000c,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillWhiteA7007e => BoxDecoration(
        color: ColorConstant.whiteA7007e,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder69 = BorderRadius.circular(
    getHorizontalSize(
      69,
    ),
  );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
