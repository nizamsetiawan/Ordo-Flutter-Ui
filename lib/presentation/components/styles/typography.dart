import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/colors.gen.dart';

class AppTypography {
  final BuildContext context;
  final Color defaultColor = ColorName.baseDark;

  AppTypography(this.context);

  TextStyle get outfit10_400 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: defaultColor,
        ),
      );

  TextStyle get outfit10_500 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10,
          color: defaultColor,
        ),
      );

  TextStyle get outfit12_400 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: defaultColor,
        ),
      );

  TextStyle get outfit12_700 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
          color: defaultColor,
        ),
      );

  TextStyle get outfit14_700 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: defaultColor,
        ),
      );

  TextStyle get outfit16_500 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: defaultColor,
        ),
      );

  TextStyle get outfit16_600 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: defaultColor,
        ),
      );

  TextStyle get outfit18_500 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: defaultColor,
        ),
      );

  TextStyle get outfit18_600 => GoogleFonts.outfit(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: defaultColor,
        ),
      );

  TextStyle get lexend10_300 => GoogleFonts.lexend(
        textStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 10,
          color: defaultColor,
        ),
      );

  TextStyle get lexend10_500 => GoogleFonts.lexend(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10,
          color: defaultColor,
        ),
      );

  TextStyle get lexend12_300 => GoogleFonts.lexend(
        textStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 12,
          color: defaultColor,
        ),
      );

  TextStyle get lexend14_500 => GoogleFonts.lexend(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: defaultColor,
        ),
      );

  TextStyle get rubik5_500 => GoogleFonts.rubik(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 5,
          color: defaultColor,
        ),
      );

  TextStyle get rubik12_600 => GoogleFonts.rubik(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: defaultColor,
        ),
      );
}
