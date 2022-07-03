import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'persons.g.dart';

@JsonSerializable()
class Person {
  Person({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  final DateTime? created;
  final List<String>? episode;
  final String? gender;
  final int? id;
  final String? image;
  final Location? location;
  final String? name;
  final Location? origin;
  final String? species;
  final String? status;
  final String? type;
  final String? url;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
