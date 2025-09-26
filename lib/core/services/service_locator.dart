import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maps/features/products/data/data_source/product_remote_date_source.dart';
import 'package:maps/features/products/data/repos/prodcust_repo_impl.dart';
import 'package:maps/features/products/domain/repos/product_repo.dart';
import 'package:maps/features/products/domain/use_case/products_use_case.dart';
import 'package:maps/features/simple_products/data/repos/product_api_repo.dart';
import 'package:maps/features/simple_products/data/repos/product_api_repo_impl.dart';
import 'api_service.dart';
import 'dio_consumer.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(DioConsumer(dio: getIt()));

  getIt.registerSingleton<ProductDataSource>(
    ProductRemoteDateSourceImpl(apiService: getIt()),
  );

  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(productRemoteDateSource: getIt()),
  );

  getIt.registerSingleton<ProductsUseCase>(
    ProductsUseCase(productRepo: getIt()),
  );

  getIt.registerSingleton<ProductApiRepo>(
    ProductApiRepoImpl(apiService: getIt()),
  );
}
