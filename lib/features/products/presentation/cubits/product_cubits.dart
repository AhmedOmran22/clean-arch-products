import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/products/domain/use_case/products_use_case.dart';
import 'package:maps/features/products/presentation/cubits/products_cubit_state.dart';

class ProductCubits extends Cubit<ProductCubitState> {
  final ProductsUseCase productsUseCase;

  ProductCubits({required this.productsUseCase})
    : super(ProductCubitState(state: ProductCubitsState.initial));

  Future<void> getProducts() async {
    emit(state.copyWith(state: ProductCubitsState.loading));
    try {
      final result = await productsUseCase.getProducts();
      emit(
        state.copyWith(
          state: ProductCubitsState.success,
          products: result,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          state: ProductCubitsState.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
