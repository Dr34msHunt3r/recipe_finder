import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/product/model/product.dart';
import 'package:recipe_finder/domain/product/repository/product_repository.dart';

@injectable
class UpdateProductUseCase {
  const UpdateProductUseCase({
    required this.repository,
  });

  final ProductRepository repository;

  Future<Product> update({
    required Product product,
  }) =>
      repository
          .getProduct(
            productId: product.id,
          )
          .then(
            (loadedProduct) => loadedProduct.copyWith(name: product.name),
          )
          .then(
            (updatedProduct) =>
                repository.updateProduct(updatedProduct: updatedProduct),
          );
}
