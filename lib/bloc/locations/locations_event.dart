part of 'locations_bloc.dart';

abstract class EventBlocLocations {}

class EventLocationsFilterByName extends EventBlocLocations {
  EventLocationsFilterByName(this.name);

  final String name;
}
