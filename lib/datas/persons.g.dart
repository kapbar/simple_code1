// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null
          ? null
          : Location.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String?,
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'episode': instance.episode,
      'gender': instance.gender,
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'origin': instance.origin,
      'species': instance.species,
      'status': instance.status,
      'type': instance.type,
      'url': instance.url,
    };
