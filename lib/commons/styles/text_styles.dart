import 'package:aspen/commons/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ASText {
  ASText._();

  static final TextStyle homeTextStyle = TextStyle(
    fontFamily: 'Hiatus',
    fontSize: 116,
    color: Colors.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 10,
  );
  static final TextStyle planTextStyle = GoogleFonts.montserrat(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle luxTextStyle = GoogleFonts.montserrat(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle vacTextStyle = GoogleFonts.montserrat(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle exploreTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.white,
  );
  static final TextStyle locationTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: ASColors.greyishColor,
  );
  static final TextStyle explorePageTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ASColors.blackColor,
  );
  static final TextStyle exploreAspenTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    fontSize: 32,
    color: ASColors.blackColor,
  );
  static final TextStyle searchTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: ASColors.blackColor,
  );
}
