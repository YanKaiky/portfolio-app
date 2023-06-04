import 'dart:convert';

class RecommendationsModel {
  final String guid;
  final String name;
  final String source;
  final String text;
  final String image;

  RecommendationsModel({
    required this.guid,
    required this.name,
    required this.source,
    required this.text,
    required this.image,
  });

  RecommendationsModel copyWith({
    String? guid,
    String? name,
    String? source,
    String? text,
    String? image,
  }) {
    return RecommendationsModel(
      guid: guid ?? this.guid,
      name: name ?? this.name,
      source: source ?? this.source,
      text: text ?? this.text,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'guid': guid,
      'name': name,
      'source': source,
      'text': text,
      'image': image,
    };
  }

  factory RecommendationsModel.fromMap(Map<String, dynamic> json) {
    return RecommendationsModel(
      guid: json['guid'] ?? '',
      name: json['name'] ?? '',
      source: json['source'] ?? '',
      text: json['text'] ?? '',
      image: json['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RecommendationsModel.fromJson(String source) =>
      RecommendationsModel.fromMap(json.decode(source));
}
