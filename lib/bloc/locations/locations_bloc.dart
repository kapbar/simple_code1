// ignore_for_file: prefer_final_fields

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/datas/location.dart';
import 'package:simple_code_lesson_2/repo/repo_locations.dart';
import 'locations_state.dart';

part 'locations_event.dart';
part 'parts/next_page.dart';

class LocationsBloc extends Bloc<EventBlocLocations, StateBlocLocations> {
  LocationsBloc({
    required this.repo,
  }) : super(const StateBlocLocations.initial()) {
    on<EventLocationsFilterByName>(
      (event, emit) async {
        emit(const StateBlocLocations.loading());
        final result = await repo.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StateBlocLocations.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocLocations.data(data: result.locationsList!),
        );
        _currentPage = 1;
        _isEndOfData = false;
        _isInProgress = false;
        _name = event.name;
      },
    );
    on<EventLocationsNextPage>(_nextPage);
  }

  final RepoLocations repo;

  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
  String _name = '';
}
