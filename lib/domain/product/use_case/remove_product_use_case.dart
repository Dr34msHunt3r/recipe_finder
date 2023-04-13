import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/product/repository/product_repository.dart';

@injectable
class RemoveProductUseCase {
  const RemoveProductUseCase({
    required this.repository,
  });

  final ProductRepository repository;

  Future<void> remove({
    required ProductId productId,
  }) =>
      repository.removeProduct(productId: productId);
}
