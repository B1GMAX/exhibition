import 'package:json_annotation/json_annotation.dart';
part 'exhibit.g.dart';

@JsonSerializable()
class Exhibit {
  final String title;
  final List<String> images;

  Exhibit({required this.title, required this.images});

  factory Exhibit.fromJson(Map<String, dynamic> json) => _$ExhibitFromJson(json);

  Map<String, dynamic> toJson() => _$ExhibitToJson(this);
}
