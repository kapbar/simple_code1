import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class SearchPersonWidget extends StatelessWidget {
  const SearchPersonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.neutral4,
            size: 24.0,
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 13.0,
            horizontal: 16.0,
          ),
          filled: true,
          fillColor: AppColors.neutral1,
          hintText: S.of(context).findPerson,
          hintStyle: AppStyles.s16w400,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 2,
                height: 20,
                color: AppColors.neutral2,
              ),
              const Icon(
                Icons.filter_alt_outlined,
                color: AppColors.neutral4,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}