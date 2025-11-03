import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'themes.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    toolbarTextStyle: ThemeData.light().textTheme.displayMedium!.copyWith(
      fontFamily: ThemeConfig.pangramRegular,
      color: ThemeConfig.lightColor,
      fontWeight: FontWeight.w500,
    ),
    iconTheme: const IconThemeData(color: ThemeConfig.lightColor),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeConfig.lightColor,
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
    headlineLarge: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontSize: 26,
    ),
    titleMedium: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontSize: 20,
    ),
    titleSmall: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontSize: 16,
    ),
    bodyLarge: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 16),
    bodyMedium: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 14),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
      (states) => ThemeConfig.lightColor.withValues(alpha: .3),
    ),
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    primary: ThemeConfig.primaryColor,
    surface: ThemeConfig.darkBackColor,
    onSurface: ThemeConfig.lightColor,
    outline: ThemeConfig.greyColor,
    outlineVariant: ThemeConfig.blueColor,

    //
    inversePrimary: ThemeConfig.floatingColor1,
    inverseSurface: ThemeConfig.floatingColor2,
    onInverseSurface: ThemeConfig.floatingColor3,
    tertiaryFixedDim: ThemeConfig.floatingColor4,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    linearTrackColor: ThemeConfig.lightColor,
    color: ThemeConfig.primaryColor,
  ),
  primaryColor: ThemeConfig.primaryColor,
  scaffoldBackgroundColor: ThemeConfig.darkBackColor.withValues(alpha: .8),

  inputDecorationTheme: InputDecorationThemeData(
    border: OutlineInputBorder(borderSide: BorderSide.none),
    fillColor: ThemeConfig.greyColor.withValues(alpha: .3),
    hintStyle: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 18),
    prefixIconColor: ThemeConfig.greyColor,
    suffixIconColor: ThemeConfig.greyColor,
    filled: true,
  ),
  tabBarTheme: TabBarThemeData(
    tabAlignment: TabAlignment.start,
    labelColor: ThemeConfig.lightColor,
    dividerColor: Colors.transparent,
    labelStyle: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,

      fontSize: 16,
    ),
    indicatorColor: ThemeConfig.primaryColor,
  ),
  listTileTheme: ListTileThemeData(
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    subtitleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.greyColor,
      fontSize: 12,
    ),
  ),
);
