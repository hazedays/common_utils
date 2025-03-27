/*
 * @Author: A kingiswinter@gmail.com
 * @Date: 2024-12-03 21:04:16
 * @LastEditors: A kingiswinter@gmail.com
 * @LastEditTime: 2025-03-27 21:28:12
 * @FilePath: /common_utils/lib/src/hex_color.dart
 * 
 * Copyright (c) 2024 by A kingiswinter@gmail.com, All Rights Reserved.
 */
import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    final hexNum = int.parse(hexColor, radix: 16);

    if (hexNum == 0) {
      return 0xff000000;
    }
    return hexNum;
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

extension ColorToHex on Color {
  ///convert material colors to hexcolor
  String toHexString() {
    final alpha = (a * 255).toInt().toRadixString(16).padLeft(2, '0');
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');
    return '#$red$green$blue$alpha'.toUpperCase();
  }
}
