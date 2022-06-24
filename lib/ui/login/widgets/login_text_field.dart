import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    this.onSaved,
  }) : super(key: key);

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.s16w400.copyWith(
        color: AppColors.mainText,
      ),
      decoration: InputDecoration(
        hintText: S.of(context).login,
        hintStyle: AppStyles.s16w400.copyWith(
          color: AppColors.neutral4,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset(
            AppAssets.svg.account,
            width: 16.0,
            color: AppColors.neutral4,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        filled: true,
        fillColor: AppColors.neutral1,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide.none,
        ),
        counterText: '',
      ),
      maxLength: 8,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return S.of(context).inputErrorCheckLogin;
        }
        if (value.length < 3) {
          return S.of(context).inputErrorLoginIsShort;
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
