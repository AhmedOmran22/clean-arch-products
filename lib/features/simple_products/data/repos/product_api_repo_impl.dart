import 'package:maps/core/constants/end_points.dart';
import 'package:maps/core/services/api_service.dart';
import 'package:maps/features/simple_products/data/models/product_api_model.dart';
import 'package:maps/features/simple_products/data/repos/product_api_repo.dart';

class ProductApiRepoImpl implements ProductApiRepo {
  final ApiService apiService;
  ProductApiRepoImpl({required this.apiService});

  @override
  Future<List<ProductApiModel>> getProducts() async {
    try {
      var result = await apiService.get(EndPoints.products);
      List<ProductApiModel> products = [];
      for (var item in result["products"]) {
        ProductApiModel productModel = ProductApiModel.fromJson(item);
        products.add(productModel);
      }
      return products;
    } catch (e) {
      rethrow;
    }
  }
}
