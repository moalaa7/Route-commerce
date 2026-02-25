
import 'package:route_commerce/domain/entities/response/product.dart';

abstract class ProductRepository{
  Future<List<Product>?> getAllProducts();
}