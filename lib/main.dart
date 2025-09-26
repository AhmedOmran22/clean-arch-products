import 'package:flutter/material.dart';
import 'package:maps/core/services/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:maps/features/products/presentation/views/products_view.dart';
import 'package:maps/firebase_options.dart';
import 'package:provider/provider.dart';

import 'features/products/presentation/providers/product_provider.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChangeNotifierProvider(
        create: (context) => ProductProvider(productsUseCase: getIt.get()),
        child: const ProductsView(),
      ),
    );
  }
}

// presentation -> represent the data
// domain -> business logic by7dr el data
// data -> data source elly bygeb el data

//? entity is 1
//? repo is 2
// -----------------------------------------
//? model is 3
//? data source is 4
// -----------------------------------------
//? data source impl is 5
//? repo impl is 6
//? use case is 7
//? dependenncy inject is 8
//? sate management is 9
