import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_state.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/location_list_item.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/search_location_widget.dart';
import 'package:simple_code_lesson_2/widgets/app_alert_dialog.dart';
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
                          return state.map(
                            initial: (_) => const SizedBox.shrink(),
                            loading: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                              ],
                            ),
                            data: (state) {
                              if (state.data.isEmpty) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                          S.of(context).locationsListIsEmpty),
                                    ),
                                  ],
                                );
                              } else {
                                return RefreshIndicator(
                                  onRefresh: () async {
                                    BlocProvider.of<LocationsBloc>(context).add(
                                      EventLocationsFilterByName(''),
                                    );
                                  },
                                  child: NotificationListener(
                                    onNotification: (notification) {
                                      if (notification is ScrollNotification) {
                                        if (notification.metrics.extentAfter ==
                                            0) {
                                          BlocProvider.of<LocationsBloc>(
                                                  context)
                                              .add(
                                            EventLocationsNextPage(),
                                          );
                                        }
                                      }
                                      return false;
                                    },
                                    child: LocationListItem(
                                        locationList: state.data),
                                  ),
                                );
                              }
                            },
                            error: (state) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(state.error),
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
            ),
            BlocConsumer<LocationsBloc, StateBlocLocations>(
              builder: (context, state) {
                final isLoading = state.maybeMap(
                  data: (state) => state.isLoading,
                  orElse: () => false,
                );
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: isLoading
                      ? const LinearProgressIndicator(
                          color: AppColors.primary,
                        )
                      : const SizedBox.shrink(),
                );
              },
              listener: (context, state) {
                state.mapOrNull(
                  data: (state) {
                    if (state.errorMessage != null) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AppAlertDialog(
                            title: Text(S.of(context).error),
                            content: Text(state.errorMessage!),
                          );
                        },
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: const AppNavBar(current: 1),
      ),
    );
  }
}
