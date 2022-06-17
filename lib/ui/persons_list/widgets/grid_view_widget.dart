import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  _statusStyle(String? status) {
    if (status == 'Dead') return AppStyles.s10w500red;
    if (status == 'Alive') return AppStyles.s10w500green;
    return AppStyles.s10w500grey;
  }

  String _statusLabel(String? status) {
    if (status == 'Dead') return S.current.dead;
    if (status == 'Alive') return S.current.alive;
    return S.current.noData;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 12.0,
      childAspectRatio: 0.95,
      crossAxisCount: 2,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      children: personList.map((person) {
        return InkWell(
          borderRadius:  BorderRadius.circular(25.0),
          onTap: () {},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppAssets.images.noAvatar),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _statusLabel(person.status).toUpperCase(),
                            style: _statusStyle(person.status),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            person.name ?? S.of(context).noData,
                            style: AppStyles.s16w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            '${person.species ?? S.of(context).noData}, ${person.gender ?? S.of(context).noData}',
                            style: AppStyles.s12w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
