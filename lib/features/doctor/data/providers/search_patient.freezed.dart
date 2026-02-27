// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicationSearchResult {

 int get drugId; String? get scientificName; String? get brandName; String? get chemicalName;
/// Create a copy of MedicationSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationSearchResultCopyWith<MedicationSearchResult> get copyWith => _$MedicationSearchResultCopyWithImpl<MedicationSearchResult>(this as MedicationSearchResult, _$identity);

  /// Serializes this MedicationSearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationSearchResult&&(identical(other.drugId, drugId) || other.drugId == drugId)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.chemicalName, chemicalName) || other.chemicalName == chemicalName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,drugId,scientificName,brandName,chemicalName);

@override
String toString() {
  return 'MedicationSearchResult(drugId: $drugId, scientificName: $scientificName, brandName: $brandName, chemicalName: $chemicalName)';
}


}

/// @nodoc
abstract mixin class $MedicationSearchResultCopyWith<$Res>  {
  factory $MedicationSearchResultCopyWith(MedicationSearchResult value, $Res Function(MedicationSearchResult) _then) = _$MedicationSearchResultCopyWithImpl;
@useResult
$Res call({
 int drugId, String? scientificName, String? brandName, String? chemicalName
});




}
/// @nodoc
class _$MedicationSearchResultCopyWithImpl<$Res>
    implements $MedicationSearchResultCopyWith<$Res> {
  _$MedicationSearchResultCopyWithImpl(this._self, this._then);

  final MedicationSearchResult _self;
  final $Res Function(MedicationSearchResult) _then;

/// Create a copy of MedicationSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? drugId = null,Object? scientificName = freezed,Object? brandName = freezed,Object? chemicalName = freezed,}) {
  return _then(_self.copyWith(
drugId: null == drugId ? _self.drugId : drugId // ignore: cast_nullable_to_non_nullable
as int,scientificName: freezed == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,chemicalName: freezed == chemicalName ? _self.chemicalName : chemicalName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicationSearchResult].
extension MedicationSearchResultPatterns on MedicationSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicationSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicationSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicationSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _MedicationSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicationSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _MedicationSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int drugId,  String? scientificName,  String? brandName,  String? chemicalName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicationSearchResult() when $default != null:
return $default(_that.drugId,_that.scientificName,_that.brandName,_that.chemicalName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int drugId,  String? scientificName,  String? brandName,  String? chemicalName)  $default,) {final _that = this;
switch (_that) {
case _MedicationSearchResult():
return $default(_that.drugId,_that.scientificName,_that.brandName,_that.chemicalName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int drugId,  String? scientificName,  String? brandName,  String? chemicalName)?  $default,) {final _that = this;
switch (_that) {
case _MedicationSearchResult() when $default != null:
return $default(_that.drugId,_that.scientificName,_that.brandName,_that.chemicalName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MedicationSearchResult implements MedicationSearchResult {
   _MedicationSearchResult({required this.drugId, this.scientificName, this.brandName, this.chemicalName});
  factory _MedicationSearchResult.fromJson(Map<String, dynamic> json) => _$MedicationSearchResultFromJson(json);

@override final  int drugId;
@override final  String? scientificName;
@override final  String? brandName;
@override final  String? chemicalName;

/// Create a copy of MedicationSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationSearchResultCopyWith<_MedicationSearchResult> get copyWith => __$MedicationSearchResultCopyWithImpl<_MedicationSearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicationSearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationSearchResult&&(identical(other.drugId, drugId) || other.drugId == drugId)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.chemicalName, chemicalName) || other.chemicalName == chemicalName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,drugId,scientificName,brandName,chemicalName);

@override
String toString() {
  return 'MedicationSearchResult(drugId: $drugId, scientificName: $scientificName, brandName: $brandName, chemicalName: $chemicalName)';
}


}

/// @nodoc
abstract mixin class _$MedicationSearchResultCopyWith<$Res> implements $MedicationSearchResultCopyWith<$Res> {
  factory _$MedicationSearchResultCopyWith(_MedicationSearchResult value, $Res Function(_MedicationSearchResult) _then) = __$MedicationSearchResultCopyWithImpl;
@override @useResult
$Res call({
 int drugId, String? scientificName, String? brandName, String? chemicalName
});




}
/// @nodoc
class __$MedicationSearchResultCopyWithImpl<$Res>
    implements _$MedicationSearchResultCopyWith<$Res> {
  __$MedicationSearchResultCopyWithImpl(this._self, this._then);

  final _MedicationSearchResult _self;
  final $Res Function(_MedicationSearchResult) _then;

/// Create a copy of MedicationSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? drugId = null,Object? scientificName = freezed,Object? brandName = freezed,Object? chemicalName = freezed,}) {
  return _then(_MedicationSearchResult(
drugId: null == drugId ? _self.drugId : drugId // ignore: cast_nullable_to_non_nullable
as int,scientificName: freezed == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,chemicalName: freezed == chemicalName ? _self.chemicalName : chemicalName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
