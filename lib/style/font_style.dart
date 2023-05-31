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
