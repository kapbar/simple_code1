part of 'persons_bloc.dart';

abstract class EventBlocPersons {}

class EventPersonsFilterByName extends EventBlocPersons {
  EventPersonsFilterByName(this.name);

  final String name;
}
