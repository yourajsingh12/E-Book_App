
import 'package:e_book/res/appColors/appColors.dart';
import 'package:flutter/material.dart';

var lightTheme=ThemeData(

  useMaterial3: true,
 //Color Style Define
  colorScheme: const  ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryColor,
    onPrimary: AppColors.backgroundColor,
    secondary: AppColors.secondryColor,
    onSecondary: AppColors.backgroundColor,
    error: Colors.red,
    onError: AppColors.fontColor,
    background: AppColors.backgroundColor,
    onBackground: AppColors.fontColor,
    surface: AppColors.backgroundColor,
    onSurface: AppColors.fontColor,
  ),


//Text Style Define
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Poppines",
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 1,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      fontFamily: "Poppins",
    ),
    labelSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
    )
  )
);