import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/core/services/service_locator.dart';
import 'package:maps/features/products/presentation/views/products_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:maps/features/simple_products/data/repos/product_api_repo.dart';
import 'package:maps/features/simple_products/presentation/cubits/products_api_cubit.dart';
import 'package:maps/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  // Prefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) =>
            ProductsApiCubit(productApiRepo: getIt<ProductApiRepo>()),
        child: const ProductsView(),
      ),
    );
  }
}
