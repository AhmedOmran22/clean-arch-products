import 'package:maps/features/products/domain/entities/product_entity.dart';

enum ProductCubitsState { initial, loading, success, error }

class ProductCubitState {
  final List<ProductEntity>? products;
  final String? errorMessage;
  final ProductCubitsState state;

  ProductCubitState({
    this.products,
    this.errorMessage,
    this.state = ProductCubitsState.initial,
  });

  ProductCubitState copyWith({
    List<ProductEntity>? products,
    String? errorMessage,
    ProductCubitsState? state,
  }) {
    return ProductCubitState(
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
      state: state ?? this.state,
    );
  }
}
