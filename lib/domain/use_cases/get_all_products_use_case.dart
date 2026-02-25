import 'package:injectable/injectable.dart';
import 'package:route_commerce/domain/entities/response/product.dart';

import '../repositories/products/product_repository.dart';

@injectable
class GetAllProductsUseCase{
  ProductRepository productRepository ;
  GetAllProductsUseCase({required this.productRepository});

  Future<List<Product>?>invoke(){
    return productRepository.getAllProducts();
  }
}