// ignore_for_file: prefer_final_fields

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/datas/episode.dart';
import 'package:simple_code_lesson_2/repo/repo_episodes.dart';
import 'episodes_state.dart';

part 'episodes_event.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class BlocEpisodes extends Bloc<EventBlocEpisodes, StateBlocEpisodes> {
  BlocEpisodes({
    required this.repo,
  }) : super(const StateBlocEpisodes.initial()) {
    on<EventEpisodesFetch>(_fetch);
    on<EventEpisodesNextPage>(_nextPage);
  }

  final RepoEpisodes repo;

  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
}
