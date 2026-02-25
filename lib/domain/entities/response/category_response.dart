import 'category.dart';
import 'metadata.dart';

class CategoryResponse  {
  final int? results;
  final Metadata? metadata;
  final List<Category>? category;
  CategoryResponse ({
    this.results,
    this.metadata,
    this.category,
  });}