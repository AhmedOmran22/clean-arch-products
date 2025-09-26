import 'package:flutter/material.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/use_case/products_use_case.dart';

enum ProductProviderState { initial, loading, success, error }

class ProductProvider extends ChangeNotifier {
  final ProductsUseCase productsUseCase;

  ProductProvider({required this.productsUseCase});
  ProductProviderState state = ProductProviderState.initial;

  late List<ProductEntity> products;

  Future<void> getProducts() async {
    state = ProductProviderState.loading;
    notifyListeners();

    try {
      final result = await productsUseCase.getProducts();
      products = result;
      state = ProductProviderState.success;
    } catch (e) {
      state = ProductProviderState.error;
    }
    notifyListeners();
  }
}
