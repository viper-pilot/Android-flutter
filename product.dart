// In files where you use the Product class (like product_card.dart, product_detail.dart, etc.)

import 'package:shop/models/review.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail; //
  final List tags;
  final List<Review> reviews; // You may have this field or others.

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    this.tags = const [],
    this.reviews = const [],
  });

  // You might have a method to convert from JSON if you're fetching data from an API
  factory Product.fromJson(dynamic json) {
    final List<Review> reviews =
        json['reviews'].map<Review>(Review.fromJson).toList();
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      thumbnail: json['thumbnail'],
      tags: json['tags'],
      reviews: reviews,
    );
  }
}
