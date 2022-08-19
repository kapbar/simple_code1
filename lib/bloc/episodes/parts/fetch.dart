part of '../episodes_bloc.dart';

extension Fetch on BlocEpisodes {
  Future<void> _fetch(
    EventEpisodesFetch event,
    Emitter<StateBlocEpisodes> emit,
  ) async {
    emit(const StateBlocEpisodes.loading());
    final result = await repo.fetch();
    if (result.errorMessage != null) {
      emit(
        StateBlocEpisodes.error(result.errorMessage!),
      );
      return;
    }
    emit(
      StateBlocEpisodes.data(data: result.episodes!),
    );
    _currentPage = 1;
    _isEndOfData = result.isEndOfData!;
  }
}
