import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_bloc.dart';
import 'package:simple_code_lesson_2/datas/location.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/locations_list/widgets/location_list_item.dart';

class LocationListBody extends StatelessWidget {
  const LocationListBody({Key? key, required this.data}) : super(key: key);

  final List<Location> data;

  @override
  Widget build(BuildContext context) {
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
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<LocationsBloc>(context).add(
            EventLocationsFilterByName(''),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<LocationsBloc>(context).add(
                  EventLocationsNextPage(),
                );
              }
            }
            return false;
          },
          child: LocationListItem(locationList: data),
        ),
      );
    }
  }
}
