import 'package:injectable/injectable.dart';
import 'package:route_commerce/domain/entities/response/category.dart';
import '../../domain/repositories/brand/brand_repository.dart';
import '../data_sources/remote/brand_remote_data_source.dart';

@Injectable(as: BrandRepository)
class BrandRepositoryImpl implements BrandRepository {
  BrandRemoteDataSource brandRemoteDataSource;

  BrandRepositoryImpl({required this.brandRemoteDataSource});

  @override
  Future<List<Category>?> getAllBrands() {
    return brandRemoteDataSource.getAllBrands();
  }
}
