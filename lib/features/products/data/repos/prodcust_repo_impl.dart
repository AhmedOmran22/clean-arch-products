import 'package:maps/features/products/data/data_source/product_remote_date_source.dart';
import 'package:maps/features/products/domain/entities/product_entity.dart';
import 'package:maps/features/products/domain/repos/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductRemoteDateSource productRemoteDateSource;
  ProductRepoImpl({required this.productRemoteDateSource});
  @override
  Future<List<ProductEntity>> getProducts() async {
    try {
      var result = await productRemoteDateSource.getProducts();
      return result.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
