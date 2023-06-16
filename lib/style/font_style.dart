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

  TextStyle mediumteks = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: ColorStyle().primarydark);

  TextStyle reguler = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorStyle().primarydark);
  TextStyle light = GoogleFonts.inter(
      fontWeight: FontWeight.w200,
      fontSize: 16,
      color: ColorStyle().primarydark);
}
