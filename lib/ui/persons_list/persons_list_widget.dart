import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/repo/repo_persons.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/grid_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/list_view_widget.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/persons_list_v_model.dart';
import 'package:simple_code_lesson_2/ui/persons_list/widgets/search_person_widget.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class PersonsListWidget extends StatelessWidget {
  const PersonsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ligtTheme,
        body: ChangeNotifierProvider(
          create: (context) => PersonsListVModel(
            repo: context.read<RepoPersons>(),
          ),
          builder: (context, _) {
            final personsTotal =
                context.watch<PersonsListVModel>().filteredList.length;
            final isListView = context.watch<PersonsListVModel>().isListView;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SearchPersonWidget(
                    onChanged: (value) {
                      context.read<PersonsListVModel>().filter(
                            value.toLowerCase(),
                          );
                    },
                  ),
                  Row(
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
                        icon: Icon(isListView ? Icons.list : Icons.grid_view),
                        iconSize: 28,
                        color: AppColors.neutral4,
                        onPressed: () {
                          context.read<PersonsListVModel>().switchView();
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: Consumer<PersonsListVModel>(
                      builder: (context, vmodel, _) {
                        if (vmodel.isLoading) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircularProgressIndicator(),
                            ],
                          );
                        }
                        if (vmodel.errorMessage != null) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(vmodel.errorMessage!),
                              ),
                            ],
                          );
                        }
                        if (vmodel.filteredList.isEmpty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(S.of(context).personsListIsEmpty),
                              ),
                            ],
                          );
                        }
                        return vmodel.isListView
                            ? ListViewWidget(
                                personList: vmodel.filteredList,
                              )
                            : GridViewWidget(
                                personList: vmodel.filteredList,
                              );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: const AppNavBar(current: 0),
      ),
    );
  }
}
