import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/products/domain/use_case/products_use_case.dart';
import 'package:maps/features/products/presentation/cubits/products_cubit_state.dart';

class ProductCubits extends Cubit<ProductCubitsState> {
  ProductCubits({required this.productsUseCase})
    : super(ProductCubitsInitial());

  final ProductsUseCase productsUseCase;

  Future<void> getProducts() async {
    emit(ProductCubitsLoading());
    try {
      final result = await productsUseCase.getProducts();
      emit(ProductCubitsSuccess(products: result));
    } on Exception catch (e) {
      emit(ProductCubitsError(message: e.toString()));
    }
  }
}
