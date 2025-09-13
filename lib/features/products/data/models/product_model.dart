import 'package:maps/features/products/data/models/dimensions_model.dart';
import 'package:maps/features/products/data/models/meta_model.dart';
import 'package:maps/features/products/data/models/review_model.dart';
import 'package:maps/features/products/domain/entities/product_entity.dart';

class ProductModel {
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
  final DimensionsModel dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<ReviewModel> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final MetaModel meta;
  final List<String> images;
  final String thumbnail;

  ProductModel({
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

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
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
      dimensions: DimensionsModel.fromJson(json["dimensions"]),
      warrantyInformation: json["warrantyInformation"],
      shippingInformation: json["shippingInformation"],
      availabilityStatus: json["availabilityStatus"],
      reviews: (json["reviews"] as List)
          .map((e) => ReviewModel.fromJson(e))
          .toList(),
      returnPolicy: json["returnPolicy"],
      minimumOrderQuantity: json["minimumOrderQuantity"],
      meta: MetaModel.fromJson(json["meta"]),
      images: List<String>.from(json["images"]),
      thumbnail: json["thumbnail"],
    );
  }
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: images.first,
      rating: rating,
    );
  }
}
