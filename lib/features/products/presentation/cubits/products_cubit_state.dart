import 'package:maps/features/products/domain/entities/product_entity.dart';

abstract class ProductCubitsState {}

class ProductCubitsInitial extends ProductCubitsState {}

class ProductCubitsLoading extends ProductCubitsState {}

class ProductCubitsSuccess extends ProductCubitsState {
  final List<ProductEntity> products;
  ProductCubitsSuccess({required this.products});
}

class ProductCubitsError extends ProductCubitsState {
  final String message;
  ProductCubitsError({required this.message});
}

