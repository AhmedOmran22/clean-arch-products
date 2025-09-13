import 'package:maps/features/products/domain/entities/product_entity.dart';
import 'package:maps/features/products/domain/repos/product_repo.dart';

class ProductsUseCase {
  final ProductRepo productRepo;
  ProductsUseCase({required this.productRepo});
  Future<List<ProductEntity>> getProducts() async {
    try {
      var result = await productRepo.getProducts();
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
