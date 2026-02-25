import 'package:injectable/injectable.dart';
import 'package:route_commerce/api/web_services.dart';
import 'package:route_commerce/data/data_sources/remote/category_remote_data_source.dart';
import 'package:route_commerce/domain/entities/response/category.dart';

import '../../mapper/category_mapper.dart';
@Injectable(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource{
  WebServices webServices;
  CategoryRemoteDataSourceImpl({required this.webServices});
  @override
  Future<List<Category>> getAllCategories()async {

    try{

      var response =await webServices.getAllCategories();
      return response.category?.map((e) => e.toCategory()).toList()??[];
    }catch(e){
rethrow;
    }


  }

}


