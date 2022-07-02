import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key, required this.personList}) : super(key: key);
  final List<Person> personList;

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

  String _speciesLabel(String? species) {
    if (species == 'Human') return S.current.man;
    if (species == 'Alien') return S.current.alien;
    return S.current.noData;
  }

  String _genderLabel(String? gender) {
    if (gender == 'Male') return S.current.male;
    if (gender == 'Female') return S.current.female;
    return S.current.noData;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 14.0,
      childAspectRatio: 0.90,
      crossAxisCount: 2,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      children: personList.map((person) {
        final urlImage = person.image;
        return InkWell(
          borderRadius: BorderRadius.circular(25.0),
          onTap: () {},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: CircleAvatar(
                  radius: 64,
                  backgroundColor: AppColors.primary,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: urlImage == null
                        ? AssetImage(AppAssets.images.noAvatar) as ImageProvider
                        : NetworkImage(urlImage),
                  ),
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
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
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
                            '${_speciesLabel(person.species)}, ${_genderLabel(person.gender)}',
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
