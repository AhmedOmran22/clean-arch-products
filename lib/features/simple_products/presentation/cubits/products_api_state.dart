import 'package:maps/features/simple_products/data/models/product_api_model.dart';

abstract class ProductsApiCubitState  {}

class ProductsApiCubitInitial extends ProductsApiCubitState {}

class ProductsApiCubitSuccess extends ProductsApiCubitState {
  final List<ProductApiModel> products;
  ProductsApiCubitSuccess({required this.products});
}

class ProductsApiCubitError extends ProductsApiCubitState {
  final String message;
  ProductsApiCubitError({required this.message});
}

class ProductsApiCubitLoading extends ProductsApiCubitState {}