import 'location.dart';

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

  factory Person.fromJson(Map<String, dynamic>? json) {
    if (json == null) return Person();
    return Person(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      gender: json["gender"],
      origin: json["origin"] == null ? null : Location.fromJson(json["origin"]),
      location: json["location"] == null ? null : Location.fromJson(json["location"]),
      image: json["image"],
      episode: (json["episode"] as List).map((e) => e as String).toList(),
      url: json["url"],
      created: json["created"] == null ? null : DateTime.parse(json["created"]),
    );
  }
}
