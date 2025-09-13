import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/products/presentation/widgets/procust_item.dart';
import 'package:maps/features/simple_products/presentation/cubits/products_api_cubit.dart';
import 'package:maps/features/simple_products/presentation/cubits/products_api_state.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductsApiCubit>().getProducts();
        },
        child: const Icon(Icons.get_app),
      ),
      appBar: AppBar(title: const Text("Products"), centerTitle: true),
      body: BlocBuilder<ProductsApiCubit, ProductsApiCubitState>(
        builder: (context, state) {
          if (state is ProductsApiCubitSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductItem(productApiModel: state.products[index]);
              },
            );
          }
          if (state is ProductsApiCubitError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
