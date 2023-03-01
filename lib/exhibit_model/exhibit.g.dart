// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exhibit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exhibit _$ExhibitFromJson(Map<String, dynamic> json) => Exhibit(
      title: json['title'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ExhibitToJson(Exhibit instance) => <String, dynamic>{
      'title': instance.title,
      'images': instance.images,
    };
