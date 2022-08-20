part of '../locations_bloc.dart';

extension NextPage on LocationsBloc {
  Future<void> _nextPage(
    EventLocationsNextPage event,
    Emitter<StateBlocLocations> emit,
  ) async {
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
    final result = await repo.nextPage(_currentPage + 1, _name);
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
    
  }
}
