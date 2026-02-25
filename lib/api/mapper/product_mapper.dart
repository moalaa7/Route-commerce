
import 'package:route_commerce/api/mapper/subcategory_mapper.dart';
import 'package:route_commerce/api/model/response/product/product_dto.dart';
import 'package:route_commerce/domain/entities/response/product.dart';

import 'category_mapper.dart';

extension ProductMapper on ProductDto{
 Product toProduct(){
    return Product(
      id: id,
      slug: slug,
      category: category!.toCategory(),
      title: title,
      description: description,
      brand: brand!.toCategory(),
      imageCover: imageCover,
      images: images,
      price: price,
      quantity: quantity,
      ratingsAverage: ratingsAverage,
      ratingsQuantity: ratingsQuantity,
      sold: sold,
      subcategory: subcategory?.map((subcategory)=>subcategory.toSubCategory()).toList()??[]
    );
  }
}