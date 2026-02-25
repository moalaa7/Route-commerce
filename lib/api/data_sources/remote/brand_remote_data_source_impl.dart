import 'package:injectable/injectable.dart';
import 'package:route_commerce/api/web_services.dart';
import 'package:route_commerce/data/data_sources/remote/brand_remote_data_source.dart';
import 'package:route_commerce/data/data_sources/remote/category_remote_data_source.dart';
import 'package:route_commerce/domain/entities/response/category.dart';

import '../../mapper/category_mapper.dart';
@Injectable(as: BrandRemoteDataSource)
class BrandRemoteDataSourceImpl implements BrandRemoteDataSource{
  WebServices webServices;
 BrandRemoteDataSourceImpl({required this.webServices});

  @override
  Future<List<Category>> getAllBrands()async {
    try{

      var response =await webServices.getAllBrands();
      return response.category?.map((e) => e.toCategory()).toList()??[];
    }catch(e){
      rethrow;
    }
  }

}


