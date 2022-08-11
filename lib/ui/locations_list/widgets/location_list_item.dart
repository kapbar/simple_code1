import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/location.dart';

class LocationListItem extends StatelessWidget {
  const LocationListItem({Key? key, required this.locationList})
      : super(key: key);
  final List<Location> locationList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: locationList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/locations/details',
              arguments: locationList[index],
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${locationList[index].type}',
                        style: AppStyles.s16w400.copyWith(
                          color: AppColors.neutral4,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${locationList[index].name}',
                        style: AppStyles.s16w500,
                      ),
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${locationList[index].dimension}',
                        style: AppStyles.s12w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 4.0),
    );
  }
}
