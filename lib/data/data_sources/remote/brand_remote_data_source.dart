import 'package:route_commerce/domain/entities/response/category.dart';

abstract class BrandRemoteDataSource {
   Future <List<Category>> getAllBrands();

}