import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/product/model/product.dart';
import 'package:recipe_finder/domain/product/repository/product_repository.dart';

@injectable
class WatchProductUseCase {
  const WatchProductUseCase({
    required this.repository,
  });

  final ProductRepository repository;

  Stream<Product> watch({
    required ProductId productId,
  }) =>
      repository.watchProduct(
        productId: productId,
      );
}
