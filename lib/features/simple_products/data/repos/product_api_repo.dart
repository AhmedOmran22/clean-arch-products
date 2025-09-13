import 'package:maps/features/simple_products/data/models/product_api_model.dart';

abstract class ProductApiRepo {
  Future<List<ProductApiModel>> getProducts();
}