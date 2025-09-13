import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/simple_products/data/repos/product_api_repo.dart';
import 'package:maps/features/simple_products/presentation/cubits/products_api_state.dart';

class ProductsApiCubit extends Cubit<ProductsApiCubitState> {
  ProductsApiCubit({required this.productApiRepo})
    : super(ProductsApiCubitInitial());
  final ProductApiRepo productApiRepo;

  Future<void> getProducts() async {
    emit(ProductsApiCubitLoading());
    try {
      var result = await productApiRepo.getProducts();
      emit(ProductsApiCubitSuccess(products: result));
    } catch (e) {
      emit(ProductsApiCubitError(message: e.toString()));
    }
  }
}
