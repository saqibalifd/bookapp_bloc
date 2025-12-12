// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booksModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BooksModel {

 bool get status; int get total; List<String> get categories; List<BookData> get data;
/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooksModelCopyWith<BooksModel> get copyWith => _$BooksModelCopyWithImpl<BooksModel>(this as BooksModel, _$identity);

  /// Serializes this BooksModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooksModel&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BooksModel(status: $status, total: $total, categories: $categories, data: $data)';
}


}

/// @nodoc
abstract mixin class $BooksModelCopyWith<$Res>  {
  factory $BooksModelCopyWith(BooksModel value, $Res Function(BooksModel) _then) = _$BooksModelCopyWithImpl;
@useResult
$Res call({
 bool status, int total, List<String> categories, List<BookData> data
});




}
/// @nodoc
class _$BooksModelCopyWithImpl<$Res>
    implements $BooksModelCopyWith<$Res> {
  _$BooksModelCopyWithImpl(this._self, this._then);

  final BooksModel _self;
  final $Res Function(BooksModel) _then;

/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? total = null,Object? categories = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BookData>,
  ));
}

}


/// Adds pattern-matching-related methods to [BooksModel].
extension BooksModelPatterns on BooksModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooksModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooksModel value)  $default,){
final _that = this;
switch (_that) {
case _BooksModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooksModel value)?  $default,){
final _that = this;
switch (_that) {
case _BooksModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  int total,  List<String> categories,  List<BookData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooksModel() when $default != null:
return $default(_that.status,_that.total,_that.categories,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  int total,  List<String> categories,  List<BookData> data)  $default,) {final _that = this;
switch (_that) {
case _BooksModel():
return $default(_that.status,_that.total,_that.categories,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  int total,  List<String> categories,  List<BookData> data)?  $default,) {final _that = this;
switch (_that) {
case _BooksModel() when $default != null:
return $default(_that.status,_that.total,_that.categories,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooksModel implements BooksModel {
  const _BooksModel({this.status = false, this.total = 0, final  List<String> categories = const [], final  List<BookData> data = const []}): _categories = categories,_data = data;
  factory _BooksModel.fromJson(Map<String, dynamic> json) => _$BooksModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  int total;
 final  List<String> _categories;
@override@JsonKey() List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<BookData> _data;
@override@JsonKey() List<BookData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooksModelCopyWith<_BooksModel> get copyWith => __$BooksModelCopyWithImpl<_BooksModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooksModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooksModel&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BooksModel(status: $status, total: $total, categories: $categories, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BooksModelCopyWith<$Res> implements $BooksModelCopyWith<$Res> {
  factory _$BooksModelCopyWith(_BooksModel value, $Res Function(_BooksModel) _then) = __$BooksModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, int total, List<String> categories, List<BookData> data
});




}
/// @nodoc
class __$BooksModelCopyWithImpl<$Res>
    implements _$BooksModelCopyWith<$Res> {
  __$BooksModelCopyWithImpl(this._self, this._then);

  final _BooksModel _self;
  final $Res Function(_BooksModel) _then;

/// Create a copy of BooksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? total = null,Object? categories = null,Object? data = null,}) {
  return _then(_BooksModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BookData>,
  ));
}


}


/// @nodoc
mixin _$BookData {

 int get id; String get thumbnail; String get bookName; String get authorName; String get aboutEditor; String get overview; String get preview; double get rating; double get price; int get quantities; String get category; String get language; String get publisher; String get publishedDate; int get pages; String get isbn; String get createdAt; String get updatedAt;
/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookDataCopyWith<BookData> get copyWith => _$BookDataCopyWithImpl<BookData>(this as BookData, _$identity);

  /// Serializes this BookData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookData&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.bookName, bookName) || other.bookName == bookName)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.aboutEditor, aboutEditor) || other.aboutEditor == aboutEditor)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantities, quantities) || other.quantities == quantities)&&(identical(other.category, category) || other.category == category)&&(identical(other.language, language) || other.language == language)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnail,bookName,authorName,aboutEditor,overview,preview,rating,price,quantities,category,language,publisher,publishedDate,pages,isbn,createdAt,updatedAt);

@override
String toString() {
  return 'BookData(id: $id, thumbnail: $thumbnail, bookName: $bookName, authorName: $authorName, aboutEditor: $aboutEditor, overview: $overview, preview: $preview, rating: $rating, price: $price, quantities: $quantities, category: $category, language: $language, publisher: $publisher, publishedDate: $publishedDate, pages: $pages, isbn: $isbn, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BookDataCopyWith<$Res>  {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) _then) = _$BookDataCopyWithImpl;
@useResult
$Res call({
 int id, String thumbnail, String bookName, String authorName, String aboutEditor, String overview, String preview, double rating, double price, int quantities, String category, String language, String publisher, String publishedDate, int pages, String isbn, String createdAt, String updatedAt
});




}
/// @nodoc
class _$BookDataCopyWithImpl<$Res>
    implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._self, this._then);

  final BookData _self;
  final $Res Function(BookData) _then;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? thumbnail = null,Object? bookName = null,Object? authorName = null,Object? aboutEditor = null,Object? overview = null,Object? preview = null,Object? rating = null,Object? price = null,Object? quantities = null,Object? category = null,Object? language = null,Object? publisher = null,Object? publishedDate = null,Object? pages = null,Object? isbn = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,bookName: null == bookName ? _self.bookName : bookName // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,aboutEditor: null == aboutEditor ? _self.aboutEditor : aboutEditor // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,preview: null == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantities: null == quantities ? _self.quantities : quantities // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BookData].
extension BookDataPatterns on BookData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookData value)  $default,){
final _that = this;
switch (_that) {
case _BookData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookData value)?  $default,){
final _that = this;
switch (_that) {
case _BookData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String thumbnail,  String bookName,  String authorName,  String aboutEditor,  String overview,  String preview,  double rating,  double price,  int quantities,  String category,  String language,  String publisher,  String publishedDate,  int pages,  String isbn,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookData() when $default != null:
return $default(_that.id,_that.thumbnail,_that.bookName,_that.authorName,_that.aboutEditor,_that.overview,_that.preview,_that.rating,_that.price,_that.quantities,_that.category,_that.language,_that.publisher,_that.publishedDate,_that.pages,_that.isbn,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String thumbnail,  String bookName,  String authorName,  String aboutEditor,  String overview,  String preview,  double rating,  double price,  int quantities,  String category,  String language,  String publisher,  String publishedDate,  int pages,  String isbn,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BookData():
return $default(_that.id,_that.thumbnail,_that.bookName,_that.authorName,_that.aboutEditor,_that.overview,_that.preview,_that.rating,_that.price,_that.quantities,_that.category,_that.language,_that.publisher,_that.publishedDate,_that.pages,_that.isbn,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String thumbnail,  String bookName,  String authorName,  String aboutEditor,  String overview,  String preview,  double rating,  double price,  int quantities,  String category,  String language,  String publisher,  String publishedDate,  int pages,  String isbn,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BookData() when $default != null:
return $default(_that.id,_that.thumbnail,_that.bookName,_that.authorName,_that.aboutEditor,_that.overview,_that.preview,_that.rating,_that.price,_that.quantities,_that.category,_that.language,_that.publisher,_that.publishedDate,_that.pages,_that.isbn,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookData implements BookData {
  const _BookData({this.id = 0, this.thumbnail = '', this.bookName = '', this.authorName = '', this.aboutEditor = '', this.overview = '', this.preview = '', this.rating = 0.0, this.price = 0.0, this.quantities = 0, this.category = '', this.language = '', this.publisher = '', this.publishedDate = '', this.pages = 0, this.isbn = '', this.createdAt = '', this.updatedAt = ''});
  factory _BookData.fromJson(Map<String, dynamic> json) => _$BookDataFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String thumbnail;
@override@JsonKey() final  String bookName;
@override@JsonKey() final  String authorName;
@override@JsonKey() final  String aboutEditor;
@override@JsonKey() final  String overview;
@override@JsonKey() final  String preview;
@override@JsonKey() final  double rating;
@override@JsonKey() final  double price;
@override@JsonKey() final  int quantities;
@override@JsonKey() final  String category;
@override@JsonKey() final  String language;
@override@JsonKey() final  String publisher;
@override@JsonKey() final  String publishedDate;
@override@JsonKey() final  int pages;
@override@JsonKey() final  String isbn;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDataCopyWith<_BookData> get copyWith => __$BookDataCopyWithImpl<_BookData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookData&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.bookName, bookName) || other.bookName == bookName)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.aboutEditor, aboutEditor) || other.aboutEditor == aboutEditor)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantities, quantities) || other.quantities == quantities)&&(identical(other.category, category) || other.category == category)&&(identical(other.language, language) || other.language == language)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,thumbnail,bookName,authorName,aboutEditor,overview,preview,rating,price,quantities,category,language,publisher,publishedDate,pages,isbn,createdAt,updatedAt);

@override
String toString() {
  return 'BookData(id: $id, thumbnail: $thumbnail, bookName: $bookName, authorName: $authorName, aboutEditor: $aboutEditor, overview: $overview, preview: $preview, rating: $rating, price: $price, quantities: $quantities, category: $category, language: $language, publisher: $publisher, publishedDate: $publishedDate, pages: $pages, isbn: $isbn, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BookDataCopyWith<$Res> implements $BookDataCopyWith<$Res> {
  factory _$BookDataCopyWith(_BookData value, $Res Function(_BookData) _then) = __$BookDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String thumbnail, String bookName, String authorName, String aboutEditor, String overview, String preview, double rating, double price, int quantities, String category, String language, String publisher, String publishedDate, int pages, String isbn, String createdAt, String updatedAt
});




}
/// @nodoc
class __$BookDataCopyWithImpl<$Res>
    implements _$BookDataCopyWith<$Res> {
  __$BookDataCopyWithImpl(this._self, this._then);

  final _BookData _self;
  final $Res Function(_BookData) _then;

/// Create a copy of BookData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? thumbnail = null,Object? bookName = null,Object? authorName = null,Object? aboutEditor = null,Object? overview = null,Object? preview = null,Object? rating = null,Object? price = null,Object? quantities = null,Object? category = null,Object? language = null,Object? publisher = null,Object? publishedDate = null,Object? pages = null,Object? isbn = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BookData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,bookName: null == bookName ? _self.bookName : bookName // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,aboutEditor: null == aboutEditor ? _self.aboutEditor : aboutEditor // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,preview: null == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantities: null == quantities ? _self.quantities : quantities // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
