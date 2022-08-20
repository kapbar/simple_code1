import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_state.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/indicator_and_error_widget.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/locations_list_body.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/search_location_widget.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ligtTheme,
        body: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Text(
                            S
                                .of(context)
                                .locationsTotal(locationTotal)
                                .toUpperCase(),
                            style: AppStyles.s10w500grey,
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: BlocBuilder<LocationsBloc, StateBlocLocations>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_) => const SizedBox.shrink(),
                            loading: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                              ],
                            ),
                            data: (state) => LocationListBody(data: state.data),
                            error: (state) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(state.error),
                                ),
                              ],
                            ),
                          );
                        },
                        buildWhen: (previous, current) {
                          if (previous.runtimeType != current.runtimeType) {
                            return true;
                          } else {
                            final previousDataLength = previous.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            final currentDataLength = current.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            return previousDataLength != currentDataLength;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const IndicatorAndErrorWidget(),
          ],
        ),
        bottomNavigationBar: const AppNavBar(current: 1),
      ),
    );
  }
}
