import 'package:injectable/injectable.dart';
import 'package:route_commerce/data/data_sources/remote/category_remote_data_source.dart';
import 'package:route_commerce/domain/entities/response/category.dart';
import 'package:route_commerce/domain/repositories/category/category_repository.dart';
@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository{
CategoryRemoteDataSource categoryRemoteDataSource;
CategoryRepositoryImpl({required this.categoryRemoteDataSource});
  @override
  Future<List<Category>?> getAllCategories() {
return categoryRemoteDataSource.getAllCategories();

  }

}