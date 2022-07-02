import 'dart:convert';

import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:http/http.dart' as http;

class RepoPersons {
  Future<ResultRepoPersons> readPersons() async {
    try {
      final url = Uri.parse('https://rickandmortyapi.com/api/character');
      final result = await http.get(url);
      final data = jsonDecode(result.body);
      final personsListJson = data['results'] as List;
      final personsList = personsListJson
          .map(
            (item) => Person.fromJson(item),
          )
          .toList();
      return ResultRepoPersons(personsList: personsList);
    } catch (error) {
      // ignore: avoid_print
      print('🏐 Error : $error');
      return ResultRepoPersons(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoPersons {
  ResultRepoPersons({
    this.errorMessage,
    this.personsList,
  });

  final String? errorMessage;
  final List<Person>? personsList;
}
