import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/repo/repo_persons.dart';

class PersonsListVModel with ChangeNotifier {
  PersonsListVModel({required this.repo}) {
    _init();
  }

  String? errorMessage;
  List<Person> filteredList = <Person>[];
  bool isListView = true;
  var isLoading = true;
  final RepoPersons repo;

  var _personList = <Person>[];

  void _init() {
    repo.readPersons().then((result) {
      errorMessage = result.errorMessage;
      _personList = result.personsList ?? <Person>[];
      filteredList = _personList;
      isLoading = false;
      notifyListeners();
    });
  }

  void filter(String query) {
    filteredList = _personList.where((element) {
      if(element.name == null) return false;
      final name = element.name!.toLowerCase();
      return name.contains(query);
    }).toList();
    notifyListeners();
  }

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }
}
