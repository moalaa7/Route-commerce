 import 'package:route_commerce/domain/entities/response/product.dart';

abstract class ProductRemoteDataSource{
 Future<List<Product>?> getAllProducts();
}