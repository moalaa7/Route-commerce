import 'package:json_annotation/json_annotation.dart';
import 'package:route_commerce/api/model/response/category/category_dto.dart';

import 'metadata_dto.dart';

part 'category_response_dto.g.dart';

@JsonSerializable()
class CategoryResponseDto {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final MetadataDto? metadata;
  @JsonKey(name: "data")
  final List<CategoryDto>? category;

  CategoryResponseDto ({
    this.results,
    this.metadata,
    this.category,
  });

  factory CategoryResponseDto.fromJson(Map<String, dynamic> json) {
    return _$CategoryResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryResponseDtoToJson(this);
  }
}



