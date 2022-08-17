import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/episode.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class EpisodesDetails extends StatelessWidget {
  const EpisodesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Episode;
    String dateFormat = DateFormat('EEEE dd MMMM yyyy').format(
      DateTime.parse('${arguments.created}'),
    );
    return Scaffold(
      backgroundColor: AppColors.ligtTheme,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 36,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: AppColors.mainText,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${arguments.name}',
                style: AppStyles.s20w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${arguments.episode}',
                style: AppStyles.s14w400.copyWith(
                  color: AppColors.neutral4,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${S.of(context).aired}: $dateFormat',
                style: AppStyles.s14w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
