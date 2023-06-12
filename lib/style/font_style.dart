import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_style.dart';

class FontFamily {
  TextStyle primary = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: ColorStyle().primarydark);

  TextStyle secondary = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorStyle().primarydark);
}
class Styles {
  static const TextStyle organizerTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    color: Colors.black,
  );

  static const TextStyle searchTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    color: AppColors.textColor,
  );

  static const Color iconColor = AppColors.textColor;

  static const TextStyle resultTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: Colors.black,
  );

  static const TextStyle Result2 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: AppColors.resultCountColor,
  );
}