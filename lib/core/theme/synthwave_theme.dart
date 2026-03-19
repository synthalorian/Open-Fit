import 'package:flutter/material.dart';

/// Synthwave color palette - neon grid aesthetic
class SynthwaveColors {
  // Primary neon colors
  static const Color neonPink = Color(0xFFFF006E);
  static const Color neonPurple = Color(0xFF8338EC);
  static const Color neonBlue = Color(0xFF3A86FF);
  static const Color neonCyan = Color(0xFF00F5D4);
  static const Color neonYellow = Color(0xFFFFBE0B);
  static const Color neonOrange = Color(0xFFFB5607);
  static const Color neonGreen = Color(0xFF00FF88);
  
  // Background colors - dark grid
  static const Color background = Color(0xFF0A0A1A);
  static const Color surface = Color(0xFF141428);
  static const Color surfaceLight = Color(0xFF1E1E3C);
  static const Color gridLine = Color(0xFF2D2D5A);
  
  // Chrome / metallic
  static const Color chrome = Color(0xFFC0C0E0);
  static const Color chromeHighlight = Color(0xFFE0E0FF);
  
  // Accent gradient (sunset)
  static const List<Color> sunsetGradient = [
    neonPink,
    neonPurple,
    neonBlue,
  ];
  
  // Status colors
  static const Color success = neonGreen;
  static const Color warning = neonYellow;
  static const Color error = neonPink;
  static const Color info = neonBlue;
  
  // Chart colors
  static const List<Color> chartColors = [
    neonPink,
    neonPurple,
    neonBlue,
    neonCyan,
    neonYellow,
    neonOrange,
  ];
}

/// Synthwave text styles
class SynthwaveTextStyles {
  static const String? displayFont = null;
  static const String? bodyFont = null;
  
  static TextStyle displayLarge(BuildContext context) => TextStyle(
    fontFamily: displayFont,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: SynthwaveColors.chrome,
    letterSpacing: 2,
  );
  
  static TextStyle displayMedium(BuildContext context) => TextStyle(
    fontFamily: displayFont,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: SynthwaveColors.chrome,
    letterSpacing: 1.5,
  );
  
  static TextStyle displaySmall(BuildContext context) => TextStyle(
    fontFamily: displayFont,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: SynthwaveColors.chrome,
    letterSpacing: 1,
  );
  
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontFamily: bodyFont,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: SynthwaveColors.chrome,
  );
  
  static TextStyle bodyMedium(BuildContext context) => TextStyle(
    fontFamily: bodyFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: SynthwaveColors.chrome,
  );
  
  static TextStyle bodySmall(BuildContext context) => TextStyle(
    fontFamily: bodyFont,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: SynthwaveColors.chrome.withOpacity(0.8),
  );
  
  static TextStyle labelLarge(BuildContext context) => TextStyle(
    fontFamily: bodyFont,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: SynthwaveColors.neonCyan,
    letterSpacing: 1,
  );
  
  static TextStyle labelMedium(BuildContext context) => TextStyle(
    fontFamily: bodyFont,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: SynthwaveColors.neonCyan,
    letterSpacing: 0.5,
  );
}

/// Custom decoration painter for grid background
class SynthwaveGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = SynthwaveColors.gridLine
      ..strokeWidth = 0.5;
    
    for (double x = 0; x < size.width; x += 40) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    
    for (double y = 0; y < size.height; y += 40) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Synthwave theme data
class SynthwaveTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: SynthwaveColors.neonPink,
        secondary: SynthwaveColors.neonPurple,
        tertiary: SynthwaveColors.neonCyan,
        surface: SynthwaveColors.surface,
        error: SynthwaveColors.error,
        onPrimary: SynthwaveColors.chrome,
        onSecondary: SynthwaveColors.chrome,
        onSurface: SynthwaveColors.chrome,
        onError: SynthwaveColors.chrome,
      ),
      scaffoldBackgroundColor: SynthwaveColors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: SynthwaveColors.surface,
        foregroundColor: SynthwaveColors.chrome,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: SynthwaveColors.surface,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: SynthwaveColors.gridLine,
            width: 1,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: SynthwaveColors.neonPink,
          foregroundColor: SynthwaveColors.chrome,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: SynthwaveColors.neonCyan,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(
            color: SynthwaveColors.neonCyan,
            width: 1,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: SynthwaveColors.neonPink,
        foregroundColor: SynthwaveColors.chrome,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: SynthwaveColors.surface,
        selectedItemColor: SynthwaveColors.neonCyan,
        unselectedItemColor: SynthwaveColors.chrome.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: SynthwaveColors.surfaceLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: SynthwaveColors.gridLine),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: SynthwaveColors.gridLine),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: SynthwaveColors.neonCyan, width: 2),
        ),
        labelStyle: TextStyle(color: SynthwaveColors.chrome.withOpacity(0.7)),
      ),
      dividerTheme: DividerThemeData(
        color: SynthwaveColors.gridLine,
        thickness: 0.5,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: SynthwaveColors.neonCyan,
        linearTrackColor: SynthwaveColors.surfaceLight,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: SynthwaveColors.neonPink,
        inactiveTrackColor: SynthwaveColors.surfaceLight,
        thumbColor: SynthwaveColors.chrome,
        overlayColor: SynthwaveColors.neonPink.withOpacity(0.2),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: SynthwaveColors.surfaceLight,
        labelStyle: TextStyle(color: SynthwaveColors.chrome),
        side: BorderSide(color: SynthwaveColors.gridLine),
      ),
    );
  }
}

/// Gradient container widget
class SynthwaveGradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final BorderRadius? borderRadius;
  
  const SynthwaveGradientContainer({
    super.key,
    required this.child,
    this.colors = SynthwaveColors.sunsetGradient,
    this.borderRadius,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}

/// Neon glow effect wrapper
class NeonGlow extends StatelessWidget {
  final Widget child;
  final Color glowColor;
  final double blurRadius;
  
  const NeonGlow({
    super.key,
    required this.child,
    this.glowColor = SynthwaveColors.neonCyan,
    this.blurRadius = 12,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: glowColor.withOpacity(0.5),
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
