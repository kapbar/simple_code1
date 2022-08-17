// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    int? id,
    String? name,
    @JsonKey(name: 'air_date')
    String? airDate,
    String? episode,
    List<String>? characters,
    String? url,
    DateTime? created,
  }) = _Episode;

  factory Episode.fromJson(Map<String, Object?> json) =>
      _$EpisodeFromJson(json);
}
