// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescriptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrescriptionList {

 List<Prescription> get prescriptions; String? get patientCode;
/// Create a copy of PrescriptionList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionListCopyWith<PrescriptionList> get copyWith => _$PrescriptionListCopyWithImpl<PrescriptionList>(this as PrescriptionList, _$identity);

  /// Serializes this PrescriptionList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionList&&const DeepCollectionEquality().equals(other.prescriptions, prescriptions)&&(identical(other.patientCode, patientCode) || other.patientCode == patientCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(prescriptions),patientCode);

@override
String toString() {
  return 'PrescriptionList(prescriptions: $prescriptions, patientCode: $patientCode)';
}


}

/// @nodoc
abstract mixin class $PrescriptionListCopyWith<$Res>  {
  factory $PrescriptionListCopyWith(PrescriptionList value, $Res Function(PrescriptionList) _then) = _$PrescriptionListCopyWithImpl;
@useResult
$Res call({
 List<Prescription> prescriptions, String? patientCode
});




}
/// @nodoc
class _$PrescriptionListCopyWithImpl<$Res>
    implements $PrescriptionListCopyWith<$Res> {
  _$PrescriptionListCopyWithImpl(this._self, this._then);

  final PrescriptionList _self;
  final $Res Function(PrescriptionList) _then;

/// Create a copy of PrescriptionList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prescriptions = null,Object? patientCode = freezed,}) {
  return _then(_self.copyWith(
prescriptions: null == prescriptions ? _self.prescriptions : prescriptions // ignore: cast_nullable_to_non_nullable
as List<Prescription>,patientCode: freezed == patientCode ? _self.patientCode : patientCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrescriptionList].
extension PrescriptionListPatterns on PrescriptionList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrescriptionList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrescriptionList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrescriptionList value)  $default,){
final _that = this;
switch (_that) {
case _PrescriptionList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrescriptionList value)?  $default,){
final _that = this;
switch (_that) {
case _PrescriptionList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Prescription> prescriptions,  String? patientCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrescriptionList() when $default != null:
return $default(_that.prescriptions,_that.patientCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Prescription> prescriptions,  String? patientCode)  $default,) {final _that = this;
switch (_that) {
case _PrescriptionList():
return $default(_that.prescriptions,_that.patientCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Prescription> prescriptions,  String? patientCode)?  $default,) {final _that = this;
switch (_that) {
case _PrescriptionList() when $default != null:
return $default(_that.prescriptions,_that.patientCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrescriptionList implements PrescriptionList {
   _PrescriptionList({required final  List<Prescription> prescriptions, this.patientCode}): _prescriptions = prescriptions;
  factory _PrescriptionList.fromJson(Map<String, dynamic> json) => _$PrescriptionListFromJson(json);

 final  List<Prescription> _prescriptions;
@override List<Prescription> get prescriptions {
  if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prescriptions);
}

@override final  String? patientCode;

/// Create a copy of PrescriptionList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrescriptionListCopyWith<_PrescriptionList> get copyWith => __$PrescriptionListCopyWithImpl<_PrescriptionList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrescriptionListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrescriptionList&&const DeepCollectionEquality().equals(other._prescriptions, _prescriptions)&&(identical(other.patientCode, patientCode) || other.patientCode == patientCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_prescriptions),patientCode);

@override
String toString() {
  return 'PrescriptionList(prescriptions: $prescriptions, patientCode: $patientCode)';
}


}

/// @nodoc
abstract mixin class _$PrescriptionListCopyWith<$Res> implements $PrescriptionListCopyWith<$Res> {
  factory _$PrescriptionListCopyWith(_PrescriptionList value, $Res Function(_PrescriptionList) _then) = __$PrescriptionListCopyWithImpl;
@override @useResult
$Res call({
 List<Prescription> prescriptions, String? patientCode
});




}
/// @nodoc
class __$PrescriptionListCopyWithImpl<$Res>
    implements _$PrescriptionListCopyWith<$Res> {
  __$PrescriptionListCopyWithImpl(this._self, this._then);

  final _PrescriptionList _self;
  final $Res Function(_PrescriptionList) _then;

/// Create a copy of PrescriptionList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prescriptions = null,Object? patientCode = freezed,}) {
  return _then(_PrescriptionList(
prescriptions: null == prescriptions ? _self._prescriptions : prescriptions // ignore: cast_nullable_to_non_nullable
as List<Prescription>,patientCode: freezed == patientCode ? _self.patientCode : patientCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
