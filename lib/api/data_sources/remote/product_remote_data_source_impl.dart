import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:route_commerce/api/mapper/product_mapper.dart';
import 'package:route_commerce/api/web_services.dart';
import 'package:route_commerce/core/exceptions/app_exception.dart';
import 'package:route_commerce/data/data_sources/remote/product_remote_data_source.dart';
import 'package:route_commerce/domain/entities/response/product.dart';

@Injectable(as:ProductRemoteDataSource )
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource{
  WebServices webServices ;
  ProductRemoteDataSourceImpl({required this.webServices});
  @override
  Future<List<Product>?> getAllProducts()async {
    try{
      var productResponse = await webServices.getAllProducts();
      //todo: List<ProductDto> => List<Product>
      return productResponse.data?.map((productDto)=>productDto.toProduct()).toList() ?? [] ;
    }on DioException catch(e){
      String message = (e.error as AppException).message ;
      throw ServerException(message: message);
    }

  }

}