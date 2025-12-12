import 'package:freezed_annotation/freezed_annotation.dart';

part 'booksModel.freezed.dart';
part 'booksModel.g.dart';

@freezed
abstract class BooksModel with _$BooksModel {
  const factory BooksModel({
    @Default(false) bool status,
    @Default(0) int total,
    @Default([]) List<String> categories,
    @Default([]) List<BookData> data,
  }) = _BooksModel;

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);
}

@freezed
abstract class BookData with _$BookData {
  const factory BookData({
    @Default(0) int id,
    @Default('') String thumbnail,
    @Default('') String bookName,
    @Default('') String authorName,
    @Default('') String aboutEditor,
    @Default('') String overview,
    @Default('') String preview,
    @Default(0.0) double rating,
    @Default(0.0) double price,
    @Default(0) int quantities,
    @Default('') String category,
    @Default('') String language,
    @Default('') String publisher,
    @Default('') String publishedDate,
    @Default(0) int pages,
    @Default('') String isbn,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _BookData;

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
}
