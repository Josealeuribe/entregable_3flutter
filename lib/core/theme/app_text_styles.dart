import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static const TextStyle budgetTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle budgetAmount = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // 🟦 Títulos de secciones
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // 🩶 Texto pequeño y gris
  static const TextStyle smallMuted = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  // 💰 Monto de categoría
  static const TextStyle categoryAmount = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
}
