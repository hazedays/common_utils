/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-03-20 13:56:30
 * @LastEditors: A kingiswinter@gmail.com
 * @LastEditTime: 2024-12-21 17:10:50
 * @FilePath: /stripey/lib/utils/hex_color.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
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
