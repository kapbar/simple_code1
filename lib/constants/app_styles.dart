import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';

class AppStyles {
  static const s16w500 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );
  static const s16w400 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: AppColors.neutral2,
  );
  static const s12w400 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.neutral3,
  );
  static const s10w500green = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w500,
    color: AppColors.more1,
    letterSpacing: 1.5,
  );
  static const s10w500red = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w500,
    color: AppColors.more2,
    letterSpacing: 1.5,
  );
  static const s10w500grey = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w500,
    color: AppColors.neutral3,
    letterSpacing: 1.5,
  );
}
