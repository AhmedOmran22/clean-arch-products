import 'package:maps/features/products/domain/entities/product_entity.dart';

abstract class ProductRepo {
  Future<List<ProductEntity>> getProducts();
}
