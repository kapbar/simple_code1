import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key, required this.personList}) : super(key: key);
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
    return ListView.separated(
      itemCount: personList.length,
      itemBuilder: (BuildContext context, int index) {
        final urlImage = personList[index].image;
        return InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: CircleAvatar(
                    radius: 41,
                    backgroundColor: AppColors.primary,
                    child: CircleAvatar(
                      radius: 37,
                      backgroundImage: urlImage == null
                          ? AssetImage(AppAssets.images.noAvatar)
                              as ImageProvider
                          : NetworkImage(urlImage),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              _statusLabel(personList[index].status)
                                  .toUpperCase(),
                              style: _statusStyle(personList[index].status),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              personList[index].name ?? S.of(context).noData,
                              style: AppStyles.s16w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${_speciesLabel(personList[index].species)}, ${_genderLabel(personList[index].gender)}',
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
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 4.0),
    );
  }
}
