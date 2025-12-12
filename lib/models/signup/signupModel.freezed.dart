// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signupModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupModel {

 int get id; String get token; String get error;
/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupModelCopyWith<SignupModel> get copyWith => _$SignupModelCopyWithImpl<SignupModel>(this as SignupModel, _$identity);

  /// Serializes this SignupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,error);

@override
String toString() {
  return 'SignupModel(id: $id, token: $token, error: $error)';
}


}

/// @nodoc
abstract mixin class $SignupModelCopyWith<$Res>  {
  factory $SignupModelCopyWith(SignupModel value, $Res Function(SignupModel) _then) = _$SignupModelCopyWithImpl;
@useResult
$Res call({
 int id, String token, String error
});




}
/// @nodoc
class _$SignupModelCopyWithImpl<$Res>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._self, this._then);

  final SignupModel _self;
  final $Res Function(SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? token = null,Object? error = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupModel].
extension SignupModelPatterns on SignupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupModel value)  $default,){
final _that = this;
switch (_that) {
case _SignupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String token,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
return $default(_that.id,_that.token,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String token,  String error)  $default,) {final _that = this;
switch (_that) {
case _SignupModel():
return $default(_that.id,_that.token,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String token,  String error)?  $default,) {final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
return $default(_that.id,_that.token,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupModel implements SignupModel {
  const _SignupModel({this.id = 0, this.token = '', this.error = ''});
  factory _SignupModel.fromJson(Map<String, dynamic> json) => _$SignupModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String token;
@override@JsonKey() final  String error;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupModelCopyWith<_SignupModel> get copyWith => __$SignupModelCopyWithImpl<_SignupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,error);

@override
String toString() {
  return 'SignupModel(id: $id, token: $token, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SignupModelCopyWith<$Res> implements $SignupModelCopyWith<$Res> {
  factory _$SignupModelCopyWith(_SignupModel value, $Res Function(_SignupModel) _then) = __$SignupModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String token, String error
});




}
/// @nodoc
class __$SignupModelCopyWithImpl<$Res>
    implements _$SignupModelCopyWith<$Res> {
  __$SignupModelCopyWithImpl(this._self, this._then);

  final _SignupModel _self;
  final $Res Function(_SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? token = null,Object? error = null,}) {
  return _then(_SignupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
