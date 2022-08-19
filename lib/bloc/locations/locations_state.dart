import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_code_lesson_2/datas/location.dart';

part 'locations_state.freezed.dart';

@freezed
class StateBlocLocations with _$StateBlocLocations {
  const factory StateBlocLocations.data({
    required List<Location> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = StateLocationsData;
  const factory StateBlocLocations.initial() = StateLocationsInitial;
  const factory StateBlocLocations.loading() = StateLocationsLoading;
  const factory StateBlocLocations.error(String error) = StateLocationsError;
}
