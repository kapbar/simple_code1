// ignore_for_file: prefer_final_fields

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/datas/location.dart';
import 'package:simple_code_lesson_2/repo/repo_locations.dart';
import 'locations_state.dart';

part 'locations_event.dart';

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
      },
    );
    on<EventLocationsNextPage>(
      (event, emit) async {
        if (_isEndOfData) return;
        if (_isInProgress) return;
        _isInProgress = true;

        final currentData = state.maybeMap(
          data: (value) => value.data,
          orElse: () => <Location>[],
        );
        emit(
          StateBlocLocations.data(
            data: currentData,
            isLoading: true,
          ),
        );
        final result = await repo.nextPage(_currentPage + 1);
        if (result.errorMessage != null) {
          emit(
            StateBlocLocations.data(
              data: currentData,
              errorMessage: result.errorMessage!,
            ),
          );
          return;
        }
        emit(
          StateBlocLocations.data(
            data: [...currentData, ...result.locationsList!],
          ),
        );
        _currentPage++;
        _isEndOfData = result.isEndOfData!;
        _isInProgress = false;
      },
    );
  }

  final RepoLocations repo;

  int _currentPage = 1;

  bool _isEndOfData = false;

  bool _isInProgress = false;
}
