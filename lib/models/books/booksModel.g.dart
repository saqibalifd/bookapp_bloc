// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booksModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => _BooksModel(
  status: json['status'] as bool? ?? false,
  total: (json['total'] as num?)?.toInt() ?? 0,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$BooksModelToJson(_BooksModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total': instance.total,
      'categories': instance.categories,
      'data': instance.data,
    };

_BookData _$BookDataFromJson(Map<String, dynamic> json) => _BookData(
  id: (json['id'] as num?)?.toInt() ?? 0,
  thumbnail: json['thumbnail'] as String? ?? '',
  bookName: json['bookName'] as String? ?? '',
  authorName: json['authorName'] as String? ?? '',
  aboutEditor: json['aboutEditor'] as String? ?? '',
  overview: json['overview'] as String? ?? '',
  preview: json['preview'] as String? ?? '',
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  quantities: (json['quantities'] as num?)?.toInt() ?? 0,
  category: json['category'] as String? ?? '',
  language: json['language'] as String? ?? '',
  publisher: json['publisher'] as String? ?? '',
  publishedDate: json['publishedDate'] as String? ?? '',
  pages: (json['pages'] as num?)?.toInt() ?? 0,
  isbn: json['isbn'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
);

Map<String, dynamic> _$BookDataToJson(_BookData instance) => <String, dynamic>{
  'id': instance.id,
  'thumbnail': instance.thumbnail,
  'bookName': instance.bookName,
  'authorName': instance.authorName,
  'aboutEditor': instance.aboutEditor,
  'overview': instance.overview,
  'preview': instance.preview,
  'rating': instance.rating,
  'price': instance.price,
  'quantities': instance.quantities,
  'category': instance.category,
  'language': instance.language,
  'publisher': instance.publisher,
  'publishedDate': instance.publishedDate,
  'pages': instance.pages,
  'isbn': instance.isbn,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
