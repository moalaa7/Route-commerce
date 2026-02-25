import 'package:injectable/injectable.dart';
import 'package:route_commerce/domain/entities/response/category.dart';
import 'package:route_commerce/domain/repositories/brand/brand_repository.dart';
@injectable
class GetAllBrandsUseCase {
  BrandRepository brandRepository;
  GetAllBrandsUseCase({required this.brandRepository});
  Future<List<Category>?> invoke(){
    return brandRepository.getAllBrands();


  }
}