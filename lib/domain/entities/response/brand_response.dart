import 'category.dart';
import 'metadata.dart';

class BrandResponse {
  final int? results;
  final Metadata? metadata;
  final List<Category>? data;

  BrandResponse ({
    this.results,
    this.metadata,
    this.data,
  });}
