import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/persons/persons_bloc.dart';
import 'package:simple_code_lesson_2/bloc/persons/states.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/grid_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/list_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/search_person_widget.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class PersonsListWidget extends StatelessWidget {
  const PersonsListWidget({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ligtTheme,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SearchPersonWidget(
                onChanged: (value) {
                  BlocProvider.of<BlocPersons>(context).add(
                    EventPersonsFilterByName(value),
                  );
                },
              ),
              BlocBuilder<BlocPersons, StateBlocPersons>(
                builder: (context, state) {
                  var personsTotal = 0;
                  if (state is StatePersonsData) {
                    personsTotal = state.data.length;
                  }
                  return Row(
                    children: [
                      Expanded(
                        child: Text(
                          S
                              .of(context)
                              .personsTotal(personsTotal)
                              .toUpperCase(),
                          style: AppStyles.s10w500grey,
                        ),
                      ),
                      IconButton(
                        splashRadius: 25.0,
                        icon: ValueListenableBuilder<bool>(
                          valueListenable: isListView,
                          builder: (context, isListViewMode, _) {
                            return isListViewMode
                                ? const Icon(Icons.list_outlined)
                                : const Icon(Icons.grid_view);
                          },
                        ),
                        iconSize: 28,
                        color: AppColors.neutral4,
                        onPressed: () {
                          isListView.value = !isListView.value;
                        },
                      ),
                    ],
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<BlocPersons, StateBlocPersons>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                        ],
                      ),
                      data: (data) {
                        if (data.isEmpty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(S.of(context).personsListIsEmpty),
                              ),
                            ],
                          );
                        } else {
                          return ValueListenableBuilder<bool>(
                            valueListenable: isListView,
                            builder: (context, isListViewMode, _) {
                              return isListViewMode
                                  ? ListViewWidget(personList: data)
                                  : GridViewWidget(personList: data);
                            },
                          );
                        }
                      },
                      error: (error) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(error),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppNavBar(current: 0),
      ),
    );
  }
}
