import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // Paleta base
  const background = Color(0xFF1B1B1B); // grafite
  const primary = Color(0xFF146C7D);    // azul petróleo médio
  const accent = Color(0xFFD9A441);     // dourado/cobre suave para detalhes
  const textColor = Color(0xFFEAEAEA);  // texto claro

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: accent,
      surface: background,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor, fontSize: 16),
      bodyMedium: TextStyle(color: textColor, fontSize: 14),
      titleLarge: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2A2A2A), // leve contraste com fundo
      labelStyle: const TextStyle(color: textColor),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF444444)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primary, width: 2),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size(double.infinity, 48),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: accent),
        foregroundColor: accent,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: accent),
    ),
  );
}
