
import 'package:injectable/injectable.dart';
import 'package:route_commerce/data/data_sources/remote/product_remote_data_source.dart';
import 'package:route_commerce/domain/entities/response/product.dart';
import 'package:route_commerce/domain/repositories/products/product_repository.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository{
  ProductRemoteDataSource remoteDataSource ;
  ProductRepositoryImpl({required this.remoteDataSource});
  @override
  Future<List<Product>?> getAllProducts() {
    return remoteDataSource.getAllProducts();
  }

}