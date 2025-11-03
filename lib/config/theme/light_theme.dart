import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'themes.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.darkBackColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),

    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(color: ThemeConfig.darkBackColor),
  ),
  colorScheme: ThemeData.light().colorScheme.copyWith(
    primary: ThemeConfig.primaryColor,
    surface: ThemeConfig.lightColor,
    onSurface: ThemeConfig.darkBackColor,
    outline: ThemeConfig.greyColor,
    outlineVariant: ThemeConfig.blueColor,
    //
    inversePrimary: ThemeConfig.floatingColor1,
    inverseSurface: ThemeConfig.floatingColor2,
    onInverseSurface: ThemeConfig.floatingColor3,
    tertiaryFixedDim: ThemeConfig.floatingColor4,
  ),

  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeConfig.darkBackColor,
  ),
  scaffoldBackgroundColor: ThemeConfig.lightColor,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    linearTrackColor: ThemeConfig.greyColor,
    color: ThemeConfig.primaryColor,
  ),
  primaryColor: ThemeConfig.primaryColor,

  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
      (states) => Colors.black.withValues(alpha: .4),
    ),
  ),

  textTheme: ThemeData.light().textTheme.copyWith(
    headlineLarge: GoogleFonts.poppins(
      color: ThemeConfig.darkBackColor,
      fontSize: 26,
    ),
    titleMedium: GoogleFonts.poppins(
      color: ThemeConfig.darkBackColor,
      fontSize: 20,
    ),
    titleSmall: GoogleFonts.poppins(
      color: ThemeConfig.lightColor,
      fontSize: 16,
    ),
    bodyLarge: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 16),
    bodyMedium: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 14),
  ),
  inputDecorationTheme: InputDecorationThemeData(
    border: OutlineInputBorder(borderSide: BorderSide.none),
    fillColor: ThemeConfig.lightColor,
    hintStyle: GoogleFonts.poppins(color: ThemeConfig.greyColor, fontSize: 18),
    prefixIconColor: ThemeConfig.greyColor,
    suffixIconColor: ThemeConfig.greyColor,
    filled: true,
  ),
  tabBarTheme: TabBarThemeData(
    tabAlignment: TabAlignment.start,
    labelColor: ThemeConfig.darkBackColor,
    dividerColor: Colors.transparent,
    labelStyle: GoogleFonts.poppins(
      color: ThemeConfig.darkBackColor,
      fontSize: 16,
    ),
    indicatorColor: ThemeConfig.primaryColor,
  ),
  listTileTheme: ListTileThemeData(
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.darkBackColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    subtitleTextStyle: GoogleFonts.poppins(
      color: ThemeConfig.greyColor,
      fontSize: 12,
    ),
  ),
);
