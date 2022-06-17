import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/grid_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/list_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/search_person_widget.dart';

class PersonsListWidget extends StatefulWidget {
  const PersonsListWidget({Key? key}) : super(key: key);

  @override
  State<PersonsListWidget> createState() => _PersonsListWidgetState();
}

class _PersonsListWidgetState extends State<PersonsListWidget> {
  bool isListView = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SearchPersonWidget(),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      S
                          .of(context)
                          .personsTotal(personList.length)
                          .toUpperCase(),
                      style: AppStyles.s10w500grey,
                    ),
                  ),
                  IconButton(
                    splashRadius: 25.0,
                    icon: Icon(isListView ? Icons.list : Icons.grid_view),
                    iconSize: 28,
                    color: AppColors.neutral4,
                    onPressed: () {
                      setState(() {
                        isListView = !isListView;
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: isListView
                    ? const ListViewWidget()
                    : const GridViewWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
