import 'package:maps/core/constants/end_points.dart';
import 'package:maps/core/services/api_service.dart';
import 'package:maps/features/products/data/models/product_model.dart';

abstract class ProductRemoteDateSource {
  Future<List<ProductModel>> getProducts();
}

class ProductRemoteDateSourceImpl implements ProductRemoteDateSource {
  final ApiService apiService;
  ProductRemoteDateSourceImpl({required this.apiService});
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      var result = await apiService.get(EndPoints.products);
      List<ProductModel> products = [];
      for (var item in result["products"]) {
        ProductModel productModel = ProductModel.fromJson(item);
        products.add(productModel);
      }
      return products;
    } catch (e) {
      rethrow;
    }
  }
}
