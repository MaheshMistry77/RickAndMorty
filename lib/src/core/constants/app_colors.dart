import 'dart:ui';

import 'package:flutter/material.dart';

///* Color Styles
class AppColors {
  /*
  * ========= Primary Colors ==================
   */
  static Color yellow500 = fromHex('#F9D262');

  static Color yellow300 = fromHex('#FFE393');

  static Color yellow100 = fromHex('#FFF8EF');

  /*
  * ========= Neutral Colors ==================
   */

  static Color neutral900 = fromHex('#1F2223');

  static Color neutral800 = fromHex('#363939');

  static Color neutral700 = fromHex('#57595A');

  static Color neutral600 = fromHex('#797A7B');

  static Color neutral500 = fromHex('#8E9090');

  static Color neutral400 = fromHex('#B1B2B2');

  static Color neutral300 = fromHex('#D2D3D3');

  static Color neutral200 = fromHex('#EAEAEA');

  static Color neutral100 = fromHex('#F6F6F6');

  static Color white = fromHex('#FFFFFF');


  static Color primaryColor = fromHex('#61BE24');

  static Color secondaryColor = fromHex('#F8F7A4');

  static Color shadowColor = fromHex('#F5CC6C');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(
      int.parse(buffer.toString(), radix: 16),
    );
  }
}
