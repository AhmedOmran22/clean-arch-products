
import 'package:maps/features/simple_products/data/models/dimensions_api_model.dart';
import 'package:maps/features/simple_products/data/models/meta_api_model.dart';
import 'package:maps/features/simple_products/data/models/review_api_model.dart';

class ProductApiModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final int weight;
  final DimensionsApiModel dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<ReviewApiModel> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final MetaApiModel meta;
  final List<String> images;
  final String thumbnail;

  ProductApiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory ProductApiModel.fromJson(Map<String, dynamic> json) {
    return ProductApiModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      category: json["category"],
      price: (json["price"] as num).toDouble(),
      discountPercentage: (json["discountPercentage"] as num).toDouble(),
      rating: (json["rating"] as num).toDouble(),
      stock: json["stock"],
      tags: List<String>.from(json["tags"]),
      brand: json["brand"] ?? "",
      sku: json["sku"],
      weight: json["weight"],
      dimensions: DimensionsApiModel.fromJson(json["dimensions"]),
      warrantyInformation: json["warrantyInformation"],
      shippingInformation: json["shippingInformation"],
      availabilityStatus: json["availabilityStatus"],
      reviews: (json["reviews"] as List)
          .map((e) => ReviewApiModel.fromJson(e))
          .toList(),
      returnPolicy: json["returnPolicy"],
      minimumOrderQuantity: json["minimumOrderQuantity"],
      meta: MetaApiModel.fromJson(json["meta"]),
      images: List<String>.from(json["images"]),
      thumbnail: json["thumbnail"],
    );
  }
}
