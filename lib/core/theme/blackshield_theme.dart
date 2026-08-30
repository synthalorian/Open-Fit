import 'package:flutter/material.dart';

/// Blackshield color palette — blood, steel, and bone. Gothic-warrior.
class BlackshieldColors {
  static const Color blood = Color(0xFFC1121F);
  static const Color bone = Color(0xFFD8D3C8);
  static const Color boneBright = Color(0xFFF5F1E8);
  static const Color voidBlack = Color(0xFF0D0D11);
  static const Color iron = Color(0xFF101014);
  static const Color steel = Color(0xFF16161C);
  static const Color steelLight = Color(0xFF1A1A20);
  static const Color ash = Color(0xFF8A8F98);
  static const Color steelBlue = Color(0xFF5B7FA6);
  static const Color steelBlueBright = Color(0xFF7B9DC4);
  static const Color warGold = Color(0xFFC9A227);
  static const Color fieldGreen = Color(0xFF6A994E);
  static const Color royalPurple = Color(0xFFA4508B);

  // Status colors
  static const Color success = fieldGreen;
  static const Color warning = warGold;
  static const Color error = blood;
  static const Color info = steelBlue;
}

/// Blackshield theme data
class BlackshieldTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: BlackshieldColors.blood,
        secondary: BlackshieldColors.steelBlue,
        tertiary: BlackshieldColors.royalPurple,
        surface: BlackshieldColors.steel,
        error: BlackshieldColors.blood,
        onPrimary: BlackshieldColors.boneBright,
        onSecondary: BlackshieldColors.boneBright,
        onSurface: BlackshieldColors.bone,
        onError: BlackshieldColors.boneBright,
      ),
      scaffoldBackgroundColor: BlackshieldColors.iron,
      canvasColor: BlackshieldColors.voidBlack,
      appBarTheme: const AppBarTheme(
        backgroundColor: BlackshieldColors.steel,
        foregroundColor: BlackshieldColors.bone,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardThemeData(
        color: BlackshieldColors.steel,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: BlackshieldColors.steelLight,
            width: 1,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: BlackshieldColors.blood,
          foregroundColor: BlackshieldColors.boneBright,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: BlackshieldColors.steelBlueBright,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            color: BlackshieldColors.steelBlueBright,
            width: 1,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: BlackshieldColors.blood,
        foregroundColor: BlackshieldColors.boneBright,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: BlackshieldColors.steel,
        selectedItemColor: BlackshieldColors.blood,
        unselectedItemColor: BlackshieldColors.bone.withValues(alpha: 0.5),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: BlackshieldColors.steelLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BlackshieldColors.steelLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BlackshieldColors.steelLight),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BlackshieldColors.blood, width: 2),
        ),
        labelStyle: TextStyle(color: BlackshieldColors.bone.withValues(alpha: 0.7)),
      ),
      dividerTheme: const DividerThemeData(
        color: BlackshieldColors.steelLight,
        thickness: 0.5,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: BlackshieldColors.blood,
        linearTrackColor: BlackshieldColors.steelLight,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: BlackshieldColors.blood,
        inactiveTrackColor: BlackshieldColors.steelLight,
        thumbColor: BlackshieldColors.bone,
        overlayColor: BlackshieldColors.blood.withValues(alpha: 0.2),
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: BlackshieldColors.steelLight,
        labelStyle: TextStyle(color: BlackshieldColors.bone),
        side: BorderSide(color: BlackshieldColors.steelLight),
      ),
    );
  }
}
