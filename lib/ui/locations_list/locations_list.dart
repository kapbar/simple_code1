import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_state.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/location_list_item.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/search_location_widget.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ligtTheme,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SearchLocationWidget(
                onChanged: (value) {
                  BlocProvider.of<LocationsBloc>(context).add(
                    EventLocationsFilterByName(value),
                  );
                },
              ),
              BlocBuilder<LocationsBloc, StateBlocLocations>(
                builder: (context, state) {
                  var locationTotal = 0;
                  if (state is StateLocationsData) {
                    locationTotal = state.data.length;
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            S
                                .of(context)
                                .locationsTotal(locationTotal)
                                .toUpperCase(),
                            style: AppStyles.s10w500grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<LocationsBloc, StateBlocLocations>(
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
                                child: Text(S.of(context).locationsListIsEmpty),
                              ),
                            ],
                          );
                        } else {
                          return LocationListItem(locationList: data);
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
        bottomNavigationBar: const AppNavBar(current: 1),
      ),
    );
  }
}
