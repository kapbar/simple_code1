import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/persons/persons_bloc.dart';
import 'package:simple_code_lesson_2/repo/api.dart';
import 'package:simple_code_lesson_2/repo/repo_persons.dart';
import 'package:simple_code_lesson_2/repo/repo_settings.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider(
          create: (context) => RepoSettings(),
        ),
        RepositoryProvider(
          create: (context) => RepoPersons(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocPersons(
              repo: RepositoryProvider.of<RepoPersons>(context),
            )..add(EventPersonsFilterByName('')),
          ),
        ],
        child: child,
      ),
    );
  }
}
