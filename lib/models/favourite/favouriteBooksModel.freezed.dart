// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favouriteBooksModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavouriteBooksModel {

 bool get status; String get message; List<FavouriteBookData> get data;
/// Create a copy of FavouriteBooksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteBooksModelCopyWith<FavouriteBooksModel> get copyWith => _$FavouriteBooksModelCopyWithImpl<FavouriteBooksModel>(this as FavouriteBooksModel, _$identity);

  /// Serializes this FavouriteBooksModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteBooksModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FavouriteBooksModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FavouriteBooksModelCopyWith<$Res>  {
  factory $FavouriteBooksModelCopyWith(FavouriteBooksModel value, $Res Function(FavouriteBooksModel) _then) = _$FavouriteBooksModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message, List<FavouriteBookData> data
});




}
/// @nodoc
class _$FavouriteBooksModelCopyWithImpl<$Res>
    implements $FavouriteBooksModelCopyWith<$Res> {
  _$FavouriteBooksModelCopyWithImpl(this._self, this._then);

  final FavouriteBooksModel _self;
  final $Res Function(FavouriteBooksModel) _then;

/// Create a copy of FavouriteBooksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FavouriteBookData>,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouriteBooksModel].
extension FavouriteBooksModelPatterns on FavouriteBooksModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteBooksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteBooksModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteBooksModel value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteBooksModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteBooksModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteBooksModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  List<FavouriteBookData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteBooksModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  List<FavouriteBookData> data)  $default,) {final _that = this;
switch (_that) {
case _FavouriteBooksModel():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  List<FavouriteBookData> data)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteBooksModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavouriteBooksModel implements FavouriteBooksModel {
  const _FavouriteBooksModel({this.status = false, this.message = '', final  List<FavouriteBookData> data = const []}): _data = data;
  factory _FavouriteBooksModel.fromJson(Map<String, dynamic> json) => _$FavouriteBooksModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
 final  List<FavouriteBookData> _data;
@override@JsonKey() List<FavouriteBookData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of FavouriteBooksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteBooksModelCopyWith<_FavouriteBooksModel> get copyWith => __$FavouriteBooksModelCopyWithImpl<_FavouriteBooksModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavouriteBooksModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteBooksModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FavouriteBooksModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FavouriteBooksModelCopyWith<$Res> implements $FavouriteBooksModelCopyWith<$Res> {
  factory _$FavouriteBooksModelCopyWith(_FavouriteBooksModel value, $Res Function(_FavouriteBooksModel) _then) = __$FavouriteBooksModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, List<FavouriteBookData> data
});




}
/// @nodoc
class __$FavouriteBooksModelCopyWithImpl<$Res>
    implements _$FavouriteBooksModelCopyWith<$Res> {
  __$FavouriteBooksModelCopyWithImpl(this._self, this._then);

  final _FavouriteBooksModel _self;
  final $Res Function(_FavouriteBooksModel) _then;

/// Create a copy of FavouriteBooksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_FavouriteBooksModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FavouriteBookData>,
  ));
}


}


/// @nodoc
mixin _$FavouriteBookData {

 int get id; String get thumbnail; String get name;@JsonKey(name: 'uploaded_by_name') String get uploadedByName;@JsonKey(name: 'uploader_image') String get uploaderImage; bool get verified; String get date;
/// Create a copy of FavouriteBookData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteBookDataCopyWith<FavouriteBookData> get copyWith => _$FavouriteBookDataCopyWithImpl<FavouriteBookData>(this as FavouriteBookData, _$identity);

  /// Serializes this FavouriteBookData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteBookData&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.name, name) || other.name == name)&&(identical(other.uploadedByName, uploadedByName) || other.uploadedByName == uploadedByName)&&(identical(other.uploaderImage, uploaderImage) || other.uploaderImage == uploaderImage)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnail,name,uploadedByName,uploaderImage,verified,date);

@override
String toString() {
  return 'FavouriteBookData(id: $id, thumbnail: $thumbnail, name: $name, uploadedByName: $uploadedByName, uploaderImage: $uploaderImage, verified: $verified, date: $date)';
}


}

/// @nodoc
abstract mixin class $FavouriteBookDataCopyWith<$Res>  {
  factory $FavouriteBookDataCopyWith(FavouriteBookData value, $Res Function(FavouriteBookData) _then) = _$FavouriteBookDataCopyWithImpl;
@useResult
$Res call({
 int id, String thumbnail, String name,@JsonKey(name: 'uploaded_by_name') String uploadedByName,@JsonKey(name: 'uploader_image') String uploaderImage, bool verified, String date
});




}
/// @nodoc
class _$FavouriteBookDataCopyWithImpl<$Res>
    implements $FavouriteBookDataCopyWith<$Res> {
  _$FavouriteBookDataCopyWithImpl(this._self, this._then);

  final FavouriteBookData _self;
  final $Res Function(FavouriteBookData) _then;

/// Create a copy of FavouriteBookData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? thumbnail = null,Object? name = null,Object? uploadedByName = null,Object? uploaderImage = null,Object? verified = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,uploadedByName: null == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String,uploaderImage: null == uploaderImage ? _self.uploaderImage : uploaderImage // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouriteBookData].
extension FavouriteBookDataPatterns on FavouriteBookData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteBookData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteBookData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteBookData value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteBookData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteBookData value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteBookData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String thumbnail,  String name, @JsonKey(name: 'uploaded_by_name')  String uploadedByName, @JsonKey(name: 'uploader_image')  String uploaderImage,  bool verified,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteBookData() when $default != null:
return $default(_that.id,_that.thumbnail,_that.name,_that.uploadedByName,_that.uploaderImage,_that.verified,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String thumbnail,  String name, @JsonKey(name: 'uploaded_by_name')  String uploadedByName, @JsonKey(name: 'uploader_image')  String uploaderImage,  bool verified,  String date)  $default,) {final _that = this;
switch (_that) {
case _FavouriteBookData():
return $default(_that.id,_that.thumbnail,_that.name,_that.uploadedByName,_that.uploaderImage,_that.verified,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String thumbnail,  String name, @JsonKey(name: 'uploaded_by_name')  String uploadedByName, @JsonKey(name: 'uploader_image')  String uploaderImage,  bool verified,  String date)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteBookData() when $default != null:
return $default(_that.id,_that.thumbnail,_that.name,_that.uploadedByName,_that.uploaderImage,_that.verified,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavouriteBookData implements FavouriteBookData {
  const _FavouriteBookData({this.id = 0, this.thumbnail = '', this.name = '', @JsonKey(name: 'uploaded_by_name') this.uploadedByName = '', @JsonKey(name: 'uploader_image') this.uploaderImage = '', this.verified = false, this.date = ''});
  factory _FavouriteBookData.fromJson(Map<String, dynamic> json) => _$FavouriteBookDataFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String thumbnail;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'uploaded_by_name') final  String uploadedByName;
@override@JsonKey(name: 'uploader_image') final  String uploaderImage;
@override@JsonKey() final  bool verified;
@override@JsonKey() final  String date;

/// Create a copy of FavouriteBookData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteBookDataCopyWith<_FavouriteBookData> get copyWith => __$FavouriteBookDataCopyWithImpl<_FavouriteBookData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavouriteBookDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteBookData&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.name, name) || other.name == name)&&(identical(other.uploadedByName, uploadedByName) || other.uploadedByName == uploadedByName)&&(identical(other.uploaderImage, uploaderImage) || other.uploaderImage == uploaderImage)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnail,name,uploadedByName,uploaderImage,verified,date);

@override
String toString() {
  return 'FavouriteBookData(id: $id, thumbnail: $thumbnail, name: $name, uploadedByName: $uploadedByName, uploaderImage: $uploaderImage, verified: $verified, date: $date)';
}


}

/// @nodoc
abstract mixin class _$FavouriteBookDataCopyWith<$Res> implements $FavouriteBookDataCopyWith<$Res> {
  factory _$FavouriteBookDataCopyWith(_FavouriteBookData value, $Res Function(_FavouriteBookData) _then) = __$FavouriteBookDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String thumbnail, String name,@JsonKey(name: 'uploaded_by_name') String uploadedByName,@JsonKey(name: 'uploader_image') String uploaderImage, bool verified, String date
});




}
/// @nodoc
class __$FavouriteBookDataCopyWithImpl<$Res>
    implements _$FavouriteBookDataCopyWith<$Res> {
  __$FavouriteBookDataCopyWithImpl(this._self, this._then);

  final _FavouriteBookData _self;
  final $Res Function(_FavouriteBookData) _then;

/// Create a copy of FavouriteBookData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? thumbnail = null,Object? name = null,Object? uploadedByName = null,Object? uploaderImage = null,Object? verified = null,Object? date = null,}) {
  return _then(_FavouriteBookData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,uploadedByName: null == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String,uploaderImage: null == uploaderImage ? _self.uploaderImage : uploaderImage // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
