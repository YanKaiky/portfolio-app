import 'dart:convert';

class ProjectsModel {
  final String guid;
  final String title;
  final String category;
  final String description;
  final String url;

  ProjectsModel({
    required this.guid,
    required this.title,
    required this.category,
    required this.description,
    required this.url,
  });

  ProjectsModel copyWith({
    String? guid,
    String? title,
    String? category,
    String? description,
    String? url,
  }) {
    return ProjectsModel(
      guid: guid ?? this.guid,
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'guid': guid,
      'title': title,
      'category': category,
      'description': description,
      'url': url,
    };
  }

  factory ProjectsModel.fromMap(Map<String, dynamic> json) {
    return ProjectsModel(
      guid: json['guid'] ?? '',
      title: json['title'] ?? '',
      category: json['category'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectsModel.fromJson(String source) =>
      ProjectsModel.fromMap(json.decode(source));
}
