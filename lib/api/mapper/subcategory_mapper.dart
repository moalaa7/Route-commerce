
import 'package:route_commerce/api/model/response/product/sub_category_dto.dart';
import 'package:route_commerce/domain/entities/response/sub_category.dart';

extension SubcategoryMapper on SubcategoryDto{
 Subcategory toSubCategory(){
    return Subcategory(
      name: name,
      slug: slug,
      id: Id,
      category: category
    );
  }
}