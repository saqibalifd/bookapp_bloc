// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favouriteBooksModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavouriteBooksModel _$FavouriteBooksModelFromJson(Map<String, dynamic> json) =>
    _FavouriteBooksModel(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => FavouriteBookData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FavouriteBooksModelToJson(
  _FavouriteBooksModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_FavouriteBookData _$FavouriteBookDataFromJson(Map<String, dynamic> json) =>
    _FavouriteBookData(
      id: (json['id'] as num?)?.toInt() ?? 0,
      thumbnail: json['thumbnail'] as String? ?? '',
      name: json['name'] as String? ?? '',
      uploadedByName: json['uploaded_by_name'] as String? ?? '',
      uploaderImage: json['uploader_image'] as String? ?? '',
      verified: json['verified'] as bool? ?? false,
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$FavouriteBookDataToJson(_FavouriteBookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'name': instance.name,
      'uploaded_by_name': instance.uploadedByName,
      'uploader_image': instance.uploaderImage,
      'verified': instance.verified,
      'date': instance.date,
    };
