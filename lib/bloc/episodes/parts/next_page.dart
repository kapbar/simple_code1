part of '../episodes_bloc.dart';

extension NextPage on BlocEpisodes {
  Future<void> _nextPage(
    EventEpisodesNextPage event,
    Emitter<StateBlocEpisodes> emit,
  ) async {
    if (_isEndOfData) return;
    if (_isInProgress) return;
    _isInProgress = true;

    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Episode>[],
    );
    emit(
      StateBlocEpisodes.data(
        data: currentData,
        isLoading: true,
      ),
    );
    final result = await repo.nextPage(_currentPage + 1);
    if (result.errorMessage != null) {
      emit(
        StateBlocEpisodes.data(
          data: currentData,
          errorMessage: result.errorMessage!,
        ),
      );
      return;
    }
    emit(
      StateBlocEpisodes.data(
        data: [...currentData, ...result.episodes!],
      ),
    );
    _currentPage++;
    _isEndOfData = result.isEndOfData!;
    _isInProgress = false;
  }
}
