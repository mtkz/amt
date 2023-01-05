import 'package:amt/data/common/colors.dart';
import 'package:flutter/material.dart';

TextStyle defaultTextStyle = const TextStyle(fontFamily: 'nunito');
ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.light(
    primary: ThemeColors.primaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: InputBorder.none,
      floatingLabelStyle: TextStyle(color: ThemeColors.floatingLabelColor),
      prefixIconColor: ThemeColors.defaultTextColor,
      suffixIconColor: ThemeColors.defaultTextColor),
  textTheme: TextTheme(
      bodyText2: defaultTextStyle.copyWith(fontSize: 18),
      headline6: defaultTextStyle.copyWith(
          fontWeight: FontWeight.bold,
          color: ThemeColors.defaultTextColor,
          fontSize: 26)),
);
