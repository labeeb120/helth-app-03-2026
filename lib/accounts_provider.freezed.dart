// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllAcountsState {

 DoctorAccount? get doctor; PatientAccount? get patient; PharmacistAccount? get pharmacist;
/// Create a copy of AllAcountsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllAcountsStateCopyWith<AllAcountsState> get copyWith => _$AllAcountsStateCopyWithImpl<AllAcountsState>(this as AllAcountsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllAcountsState&&const DeepCollectionEquality().equals(other.doctor, doctor)&&const DeepCollectionEquality().equals(other.patient, patient)&&const DeepCollectionEquality().equals(other.pharmacist, pharmacist));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(doctor),const DeepCollectionEquality().hash(patient),const DeepCollectionEquality().hash(pharmacist));

@override
String toString() {
  return 'AllAcountsState(doctor: $doctor, patient: $patient, pharmacist: $pharmacist)';
}


}

/// @nodoc
abstract mixin class $AllAcountsStateCopyWith<$Res>  {
  factory $AllAcountsStateCopyWith(AllAcountsState value, $Res Function(AllAcountsState) _then) = _$AllAcountsStateCopyWithImpl;
@useResult
$Res call({
 DoctorAccount? doctor, PatientAccount? patient, PharmacistAccount? pharmacist
});




}
/// @nodoc
class _$AllAcountsStateCopyWithImpl<$Res>
    implements $AllAcountsStateCopyWith<$Res> {
  _$AllAcountsStateCopyWithImpl(this._self, this._then);

  final AllAcountsState _self;
  final $Res Function(AllAcountsState) _then;

/// Create a copy of AllAcountsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctor = freezed,Object? patient = freezed,Object? pharmacist = freezed,}) {
  return _then(_self.copyWith(
doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorAccount?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientAccount?,pharmacist: freezed == pharmacist ? _self.pharmacist : pharmacist // ignore: cast_nullable_to_non_nullable
as PharmacistAccount?,
  ));
}

}


/// Adds pattern-matching-related methods to [AllAcountsState].
extension AllAcountsStatePatterns on AllAcountsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllAcountsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllAcountsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllAcountsState value)  $default,){
final _that = this;
switch (_that) {
case _AllAcountsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllAcountsState value)?  $default,){
final _that = this;
switch (_that) {
case _AllAcountsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DoctorAccount? doctor,  PatientAccount? patient,  PharmacistAccount? pharmacist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllAcountsState() when $default != null:
return $default(_that.doctor,_that.patient,_that.pharmacist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DoctorAccount? doctor,  PatientAccount? patient,  PharmacistAccount? pharmacist)  $default,) {final _that = this;
switch (_that) {
case _AllAcountsState():
return $default(_that.doctor,_that.patient,_that.pharmacist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DoctorAccount? doctor,  PatientAccount? patient,  PharmacistAccount? pharmacist)?  $default,) {final _that = this;
switch (_that) {
case _AllAcountsState() when $default != null:
return $default(_that.doctor,_that.patient,_that.pharmacist);case _:
  return null;

}
}

}

/// @nodoc


class _AllAcountsState implements AllAcountsState {
   _AllAcountsState({this.doctor, this.patient, this.pharmacist});
  

@override final  DoctorAccount? doctor;
@override final  PatientAccount? patient;
@override final  PharmacistAccount? pharmacist;

/// Create a copy of AllAcountsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllAcountsStateCopyWith<_AllAcountsState> get copyWith => __$AllAcountsStateCopyWithImpl<_AllAcountsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllAcountsState&&const DeepCollectionEquality().equals(other.doctor, doctor)&&const DeepCollectionEquality().equals(other.patient, patient)&&const DeepCollectionEquality().equals(other.pharmacist, pharmacist));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(doctor),const DeepCollectionEquality().hash(patient),const DeepCollectionEquality().hash(pharmacist));

@override
String toString() {
  return 'AllAcountsState(doctor: $doctor, patient: $patient, pharmacist: $pharmacist)';
}


}

/// @nodoc
abstract mixin class _$AllAcountsStateCopyWith<$Res> implements $AllAcountsStateCopyWith<$Res> {
  factory _$AllAcountsStateCopyWith(_AllAcountsState value, $Res Function(_AllAcountsState) _then) = __$AllAcountsStateCopyWithImpl;
@override @useResult
$Res call({
 DoctorAccount? doctor, PatientAccount? patient, PharmacistAccount? pharmacist
});




}
/// @nodoc
class __$AllAcountsStateCopyWithImpl<$Res>
    implements _$AllAcountsStateCopyWith<$Res> {
  __$AllAcountsStateCopyWithImpl(this._self, this._then);

  final _AllAcountsState _self;
  final $Res Function(_AllAcountsState) _then;

/// Create a copy of AllAcountsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctor = freezed,Object? patient = freezed,Object? pharmacist = freezed,}) {
  return _then(_AllAcountsState(
doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorAccount?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientAccount?,pharmacist: freezed == pharmacist ? _self.pharmacist : pharmacist // ignore: cast_nullable_to_non_nullable
as PharmacistAccount?,
  ));
}


}

// dart format on
