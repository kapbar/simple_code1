import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/widgets/app_button_styles.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    Key? key,
    this.title,
    this.content,
  }) : super(key: key);

  final Widget? title;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      title: title,
      titleTextStyle: const TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w500,
        color: AppColors.mainText,
      ),
      titlePadding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 28.0,
      ),
      content: content == null
          ? null
          : SizedBox(
              width: double.maxFinite,
              child: content,
            ),
      contentTextStyle: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: AppColors.mainText,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 24.0,
      ),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      actionsPadding: const EdgeInsets.only(
        left: 22.0,
        right: 6.0,
        bottom: 10.0,
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: AppButtonStyles.outlined1,
                child: Text(S.of(context).ok),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
