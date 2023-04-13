import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/product/model/product.dart';
import 'package:recipe_finder/domain/product/repository/product_repository.dart';

@injectable
class WatchProductsUseCase {
  const WatchProductsUseCase({
    required this.repository,
  });

  final ProductRepository repository;

  Stream<List<Product>> watch() => repository.watchProducts();
}
