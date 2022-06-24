import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';

class AppButtonStyles {
  static final elevated1 = ElevatedButton.styleFrom(
    primary: AppColors.primary,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 12.0,
    ),
  );

  static final outlined1 = OutlinedButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
    ),
    side: const BorderSide(
      color: AppColors.primary,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
    ),
  );
}
