
import 'package:flutter/material.dart';

class AppThemeData{
  static const Color primaryColor = Color(0xFF4C4DB9);
  static const Color blueColor = Color(0xFF38358F);
  static const Color lightBlueColor = Color(0xFF3F79E8);
  static const Color skyBlueColor = Color(0xFF64d3f9);
  static const Color accentColor = Color(0xFFeef2fd);
  static const Color secondaryColor = Color(0xFFde7700);
  static const Color lightOrangeColor = Color(0xFFff9d00);
  static const Color lightBadgeColor = Color(0xFFe2e9ff);
  static const Color primaryBadgeColor = Color(0xFFf9d9c9);

  static final ThemeData themeData = ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: primaryColor,
      backgroundColor: const Color(0xFFf2f5ff),
      scaffoldBackgroundColor: const Color(0xFFf2f5ff),
  );

  static final BorderRadius borderRadius = BorderRadius.circular(20.0);
  static const double radius = 60.0;
  static const double length = double.infinity;

}