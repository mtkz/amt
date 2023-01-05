import 'package:amt/data/common/colors.dart';
import 'package:flutter/material.dart';

TextStyle defaultTextStyle = const TextStyle(fontFamily: 'nunito');
ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.light(
    primary: ThemeColors.primaryColor,
    onPrimary: ThemeColors.onPrimaryColor,
  ),
  tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 3))),
  appBarTheme: AppBarTheme(
      color: ThemeColors.onPrimaryColor,
      iconTheme: IconThemeData(color: ThemeColors.defaultTextColor)),
  inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: InputBorder.none,
      floatingLabelStyle: TextStyle(color: ThemeColors.floatingLabelColor),
      prefixIconColor: ThemeColors.defaultTextColor,
      suffixIconColor: ThemeColors.defaultTextColor),
  textTheme: TextTheme(
      bodyText2: defaultTextStyle.copyWith(fontSize: 18),
      caption: defaultTextStyle.copyWith(
          fontSize: 14, color: ThemeColors.captionColor),
      headline6: defaultTextStyle.copyWith(
          fontWeight: FontWeight.bold,
          color: ThemeColors.defaultTextColor,
          fontSize: 26)),
);
