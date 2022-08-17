import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/episode.dart';

class EpisodesTile extends StatelessWidget {
  const EpisodesTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Episode data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/episodes/details',
          arguments: data,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.neutral4,
              AppColors.primary,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              offset: Offset(1, 1),
              color: Colors.black54,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${data.episode}',
                    style: AppStyles.s16w500.copyWith(
                      letterSpacing: 1.5,
                      color: AppColors.ligtTheme,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${data.name}',
                    style: AppStyles.s16w500.copyWith(
                      color: AppColors.ligtTheme,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right_outlined,
                  color: AppColors.ligtTheme,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${data.airDate}',
                    style: AppStyles.s12w400.copyWith(
                      color: AppColors.ligtTheme,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
