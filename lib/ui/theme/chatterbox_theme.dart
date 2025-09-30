import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chatterbox_colors.dart';
import 'chatterbox_typography.dart';

/// Theme preference options for the app.
enum ThemePreference {
  system,
  light,
  dark,
}

/// chatterbox theme configuration combining colors and typography.
/// Provides complete ThemeData for both light and dark modes.
class chatterboxTheme {
  chatterboxTheme._();

  /// Creates a dark theme for chatterbox.
  static ThemeData get darkTheme {
    final colorScheme = chatterboxColors.darkColorScheme;
    final textTheme = chatterboxTypography.textThemeFor(colorScheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: chatterboxColors.darkBackground,

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: chatterboxColors.darkBackground,
        foregroundColor: chatterboxColors.darkOnBackground,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge?.copyWith(
          color: chatterboxColors.darkPrimary,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: chatterboxColors.darkBackground,
        ),
      ),

      // Input decoration for text fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: chatterboxColors.darkSurface,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: chatterboxColors.darkOnSurface.withOpacity(0.5),
        ),
      ),

      // Icon theme
      iconTheme: const IconThemeData(
        color: chatterboxColors.darkPrimary,
        size: 24,
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: chatterboxColors.darkPrimary.withOpacity(0.2),
        thickness: 1,
      ),

      // Bottom sheet theme
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: chatterboxColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),

      // Card theme
      cardTheme: CardTheme(
        color: chatterboxColors.darkSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // List tile theme
      listTileTheme: ListTileThemeData(
        textColor: chatterboxColors.darkOnSurface,
        iconColor: chatterboxColors.darkPrimary,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: chatterboxColors.darkPrimary,
        ),
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: chatterboxColors.darkPrimary,
          foregroundColor: chatterboxColors.darkOnPrimary,
        ),
      ),

      // Icon button theme
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: chatterboxColors.darkPrimary,
        ),
      ),
    );
  }

  /// Creates a light theme for chatterbox.
  static ThemeData get lightTheme {
    final colorScheme = chatterboxColors.lightColorScheme;
    final textTheme = chatterboxTypography.textThemeFor(colorScheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: chatterboxColors.lightBackground,

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: chatterboxColors.lightBackground,
        foregroundColor: chatterboxColors.lightOnBackground,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge?.copyWith(
          color: chatterboxColors.lightPrimary,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: chatterboxColors.lightBackground,
        ),
      ),

      // Input decoration for text fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: chatterboxColors.lightSurface,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: chatterboxColors.lightOnSurface.withOpacity(0.5),
        ),
      ),

      // Icon theme
      iconTheme: const IconThemeData(
        color: chatterboxColors.lightPrimary,
        size: 24,
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: chatterboxColors.lightPrimary.withOpacity(0.2),
        thickness: 1,
      ),

      // Bottom sheet theme
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: chatterboxColors.lightSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),

      // Card theme
      cardTheme: CardTheme(
        color: chatterboxColors.lightSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // List tile theme
      listTileTheme: ListTileThemeData(
        textColor: chatterboxColors.lightOnSurface,
        iconColor: chatterboxColors.lightPrimary,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: chatterboxColors.lightPrimary,
        ),
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: chatterboxColors.lightPrimary,
          foregroundColor: chatterboxColors.lightOnPrimary,
        ),
      ),

      // Icon button theme
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: chatterboxColors.lightPrimary,
        ),
      ),
    );
  }

  /// Gets the theme for the given preference and platform brightness.
  static ThemeData themeFor(
      ThemePreference preference, Brightness platformBrightness) {
    switch (preference) {
      case ThemePreference.light:
        return lightTheme;
      case ThemePreference.dark:
        return darkTheme;
      case ThemePreference.system:
        return platformBrightness == Brightness.dark ? darkTheme : lightTheme;
    }
  }

  /// Detects if the current theme is dark based on background luminance.
  static bool isDarkTheme(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return backgroundColor.red + backgroundColor.green + backgroundColor.blue <
        1.5 * 255;
  }
}
