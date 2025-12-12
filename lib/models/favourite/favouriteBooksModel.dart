import 'package:freezed_annotation/freezed_annotation.dart';

part 'favouriteBooksModel.freezed.dart';
part 'favouriteBooksModel.g.dart';

@freezed
abstract class FavouriteBooksModel with _$FavouriteBooksModel {
  const factory FavouriteBooksModel({
    @Default(false) bool status,
    @Default('') String message,
    @Default([]) List<FavouriteBookData> data,
  }) = _FavouriteBooksModel;

  factory FavouriteBooksModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteBooksModelFromJson(json);
}

@freezed
abstract class FavouriteBookData with _$FavouriteBookData {
  const factory FavouriteBookData({
    @Default(0) int id,
    @Default('') String thumbnail,
    @Default('') String name,
    @JsonKey(name: 'uploaded_by_name') @Default('') String uploadedByName,
    @JsonKey(name: 'uploader_image') @Default('') String uploaderImage,
    @Default(false) bool verified,
    @Default('') String date,
  }) = _FavouriteBookData;

  factory FavouriteBookData.fromJson(Map<String, dynamic> json) =>
      _$FavouriteBookDataFromJson(json);
}
