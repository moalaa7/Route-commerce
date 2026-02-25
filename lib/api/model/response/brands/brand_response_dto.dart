import 'package:json_annotation/json_annotation.dart';
import 'package:route_commerce/api/model/response/category/category_dto.dart';
import 'package:route_commerce/api/model/response/category/metadata_dto.dart';

part 'brand_response_dto.g.dart';

@JsonSerializable()
class BrandResponseDto {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final MetadataDto? metadata;
  @JsonKey(name: "data")
  final List<CategoryDto>? category;

  BrandResponseDto ({
    this.results,
    this.metadata,
    this.category,
  });

  factory BrandResponseDto.fromJson(Map<String, dynamic> json) {
    return _$BrandResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandResponseDtoToJson(this);
  }
}




