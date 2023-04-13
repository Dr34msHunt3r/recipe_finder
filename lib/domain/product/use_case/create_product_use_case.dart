import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/product/model/product.dart';
import 'package:recipe_finder/domain/product/repository/product_repository.dart';

@injectable
class CreateProductUseCase {
  const CreateProductUseCase({
    required this.repository,
  });

  final ProductRepository repository;

  Future<Product> create({
    required ProductName name,
  }) =>
      repository.createProduct(
        productName: name,
      );
}
