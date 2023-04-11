import 'package:recipe_finder/domain/product/model/product.dart';

typedef ProductId = String;
typedef ProductName = String;

abstract class ProductRepository {
  Stream<List<Product>> watchProducts();

  Stream<Product> watchProduct({
    required ProductId productId,
  });

  Future<Product> createProduct({
    required ProductName productName,
  });

  Future<Product> getProduct({
    required ProductId productId,
  });

  Future<Product> updateProduct({
    required Product updatedProduct,
  });

  Future<void> removeProduct({
    required ProductId productId,
  });
}
