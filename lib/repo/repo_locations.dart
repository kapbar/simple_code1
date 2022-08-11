// ignore_for_file: avoid_print

import 'package:simple_code_lesson_2/datas/location.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/repo/api.dart';

class RepoLocations {
  final Api api;

  RepoLocations({required this.api});

  Future<ResultRepoLocations> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '/location/',
        queryParameters: {
          "name": name,
        },
      );

      final List locationsListJson = result.data['results'] ?? [];
      final locationsList = locationsListJson
          .map(
            (item) => Location.fromJson(item),
          )
          .toList();
      return ResultRepoLocations(locationsList: locationsList);
    } catch (error) {
      print('🏐 Error : $error');
      return ResultRepoLocations(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoLocations {
  final String? errorMessage;
  final List<Location>? locationsList;

  ResultRepoLocations({
    this.errorMessage,
    this.locationsList,
  });
}
