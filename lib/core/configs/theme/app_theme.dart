import 'package:flutter/material.dart';
import 'package:shabahang/core/configs/theme/app_colors.dart';

class AppTheme {
  
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Kalameh',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightTheme,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20)
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Kalameh',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkTheme,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.lightThemeGrey,
      ),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20)
        ),
      ),
    ),
  );

}