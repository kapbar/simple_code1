// ignore_for_file: avoid_print

import 'package:simple_code_lesson_2/datas/episode.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/repo/api.dart';

class RepoEpisodes {
  RepoEpisodes({required this.api});

  final Api api;

  Future<ResultRepoEpisodes> fetch() => nextPage(1);

  Future<ResultRepoEpisodes> nextPage(int page) async {
    try {
      final result = await api.dio.get('/episode?page=$page');
      final bool isEndOfData = result.data['info']['next'] == null;

      final List json = result.data['results'] ?? [];
      final list = json.map((item) => Episode.fromJson(item));

      return ResultRepoEpisodes(
        episodes: list.toList(),
        isEndOfData: isEndOfData,
      );
    } catch (error) {
      print('🏐 Error : $error');
      return ResultRepoEpisodes(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoEpisodes {
  ResultRepoEpisodes({
    this.isEndOfData, 
    this.errorMessage,
    this.episodes,
  });

  final String? errorMessage;
  final List<Episode>? episodes;
  final bool? isEndOfData;
}
