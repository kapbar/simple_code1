import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/datas/persons.dart';
import 'package:simple_code_lesson_2/repo/repo_persons.dart';

part 'persons_event.dart';
part 'persons_state.dart';

class BlocPersons extends Bloc<EventBlocPersons, StateBlocPersons> {
  BlocPersons({
    required this.repo,
  }) : super(StatePersonsInitial()) {
    on<EventPersonsFilterByName>(
      (event, emit) async {
        emit(StatePersonsLoading());
        final result = await repo.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StatePersonsError(result.errorMessage!),
          );
          return;
        }
        emit(
          StatePersonsData(data: result.personsList!),
        );
      },
    );
  }

  final RepoPersons repo;
}
