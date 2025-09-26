import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/products/presentation/widgets/procust_item.dart';

import '../providers/product_provider.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductProvider>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.getProducts();
        },
        child: const Icon(Icons.get_app),
      ),
      appBar: AppBar(title: const Text("Products"), centerTitle: true),
      body: Builder(
        builder: (context) {
          switch (provider.state) {
            case ProductProviderState.loading:
              return const Center(child: CircularProgressIndicator());
            case ProductProviderState.error:
              return const Center(child: Text("Error"));
            case ProductProviderState.success:
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: provider.products.length,
                itemBuilder: (context, index) {
                  return ProductItem(productEntity: provider.products[index]);
                },
              );
            case ProductProviderState.initial:
              return const Center(child: Text("Initial"));
          }
        },
      ),
    );
  }
}
