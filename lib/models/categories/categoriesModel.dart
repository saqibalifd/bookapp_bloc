import 'package:freezed_annotation/freezed_annotation.dart';

part 'categoriesModel.freezed.dart';
part 'categoriesModel.g.dart';

@freezed
abstract class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({@Default([]) List<Category> categories}) =
      _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({@Default(0) int id, @Default('') String name}) =
      _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
