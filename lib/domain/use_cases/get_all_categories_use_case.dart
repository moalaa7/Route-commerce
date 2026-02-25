import 'package:injectable/injectable.dart';
import '../entities/response/category.dart';
import '../repositories/category/category_repository.dart';

@injectable
class GetAllCategoriesUseCase {
  CategoryRepository categoryRepository ;
  GetAllCategoriesUseCase({required this.categoryRepository});
Future<List<Category>?> invoke(){
  return categoryRepository.getAllCategories();

}


}