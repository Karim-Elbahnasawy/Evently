import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeManager {
  static final ThemeData light = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorsManager.ofWhite,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.ofWhite,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ColorsManager.blue,
        fontWeight: FontWeight.w400,
        fontSize: 22.sp,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.white,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: ColorsManager.blue,
      shape: CircularNotchedRectangle(),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      foregroundColor: ColorsManager.white,
      shape: StadiumBorder(
        side: BorderSide(color: ColorsManager.white, width: 4.w),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: ColorsManager.grey,
      suffixIconColor: ColorsManager.grey,
      labelStyle: TextStyle(color: ColorsManager.grey),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16),
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16),
        side: BorderSide(color: ColorsManager.blue, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.r),
        ),
      ),
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.inter(
        color: ColorsManager.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: GoogleFonts.inter(
        color: ColorsManager.blue,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: GoogleFonts.inter(
        color: ColorsManager.blue,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.inter(
        color: ColorsManager.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorsManager.white,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.blue,
      ),
      titleMedium: GoogleFonts.inter(
        color: ColorsManager.blue,
        fontSize: 16.sp,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: ColorsManager.blue,
      ),
      labelSmall: GoogleFonts.inter(
        color: ColorsManager.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.inter(
        color: ColorsManager.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
  static final ThemeData dark = ThemeData();
}
