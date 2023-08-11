import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007e = fromHex('#7e000000');

  static Color gray5001 = fromHex('#f9f9f9');

  static Color whiteA7007e = fromHex('#7effffff');

  static Color deepPurpleA4005e = fromHex('#5e5835fb');

  static Color black90090 = fromHex('#90000000');

  static Color gray9008b = fromHex('#8b1b1f31');

  static Color lightBlue400 = fromHex('#20b9fc');

  static Color gray9006c = fromHex('#6c1b1f31');

  static Color lightBlue4000c = fromHex('#0c20b9fc');

  static Color gray50 = fromHex('#f9faff');

  static Color deepOrange5005e = fromHex('#5efd6b22');

  static Color teal4005e = fromHex('#5e22b07d');

  static Color deepOrange50063 = fromHex('#63fd6b22');

  static Color black900 = fromHex('#000000');

  static Color gray900A2 = fromHex('#a21b1f31');

  static Color deepPurpleA400 = fromHex('#5835fb');

  static Color deepOrange500 = fromHex('#fd6b22');

  static Color gray90063 = fromHex('#631b1f31');

  static Color redA40090 = fromHex('#90fd2222');

  static Color deepOrange5006c = fromHex('#6cfd6b22');

  static Color blueGray400 = fromHex('#888888');

  static Color deepPurpleA4000c = fromHex('#0c5835fb');

  static Color gray900 = fromHex('#1b1f31');

  static Color deepOrange5000c = fromHex('#0cfd6b22');

  static Color black9000c = fromHex('#0c000000');

  static Color deepOrange500A2 = fromHex('#a2fd6b22');

  static Color gray9007e = fromHex('#7e1b1f31');

  static Color gray9005e = fromHex('#5e1b1f31');

  static Color redA40066 = fromHex('#66fd2121');

  static Color redA4000c = fromHex('#0cfd2222');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#901b1f31');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
