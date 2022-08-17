import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_code_lesson_2/datas/episode.dart';

part 'episodes_state.freezed.dart';

@freezed
class StateBlocEpisodes with _$StateBlocEpisodes {
  const factory StateBlocEpisodes.data({
    required List<Episode> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = StateEpisodesData;

  const factory StateBlocEpisodes.error(String error) = StateEpisodesError;

  const factory StateBlocEpisodes.initial() = StateEpisodesInitial;

  const factory StateBlocEpisodes.loading() = StateEpisodesLoading;
}
