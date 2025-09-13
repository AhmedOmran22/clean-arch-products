import 'package:flutter/material.dart';
import 'package:maps/features/products/domain/entities/product_entity.dart';
import 'package:maps/features/products/domain/use_case/products_use_case.dart';

class ProviderTest extends ChangeNotifier {
  String text = "Ahmed omran";
  ProductsUseCase productsUseCase;
  List<ProductEntity>? products;

  ProviderTest({required this.productsUseCase});

  void getProducts() async {
    products = await productsUseCase.getProducts();
    notifyListeners();
  }
}
