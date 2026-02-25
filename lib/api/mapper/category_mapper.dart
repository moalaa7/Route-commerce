import 'package:route_commerce/api/model/response/category/category_dto.dart';

import '../../domain/entities/response/category.dart';

extension CategoryMapper on CategoryDto{
Category toCategory(){
 return Category(id: id, name: name, image: image);

}

}