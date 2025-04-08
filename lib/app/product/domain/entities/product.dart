import 'dart:convert';

class Product {
  final String id;
  final String name;
  final String thumbnail;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String slug;

  Product({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.slug,
  });

  Product copyWith({
    String? id,
    String? name,
    String? thumbnail,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? slug,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      thumbnail: thumbnail ?? this.thumbnail,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      slug: slug ?? this.slug,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      'id': id,
      'name': name,
      'thumbnail': thumbnail,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'deletedAt': deletedAt?.toIso8601String(),
      'slug': slug,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      thumbnail: map['thumbnail'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
      deletedAt: map['deletedAt'] != null
        ? DateTime.parse(map['deletedAt'] as String)
        : null,
      slug: map['slug'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, thumbnail: $thumbnail, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, slug: $slug)';
  }
}