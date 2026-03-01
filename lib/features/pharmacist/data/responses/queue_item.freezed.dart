// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PrescriptionQueueItem _$PrescriptionQueueItemFromJson(
  Map<String, dynamic> json
) {
    return Prescription_QueueItem.fromJson(
      json
    );
}

/// @nodoc
mixin _$PrescriptionQueueItem {

 int? get prescriptionId; String? get patientName; String? get doctorName; DateTime? get prescriptionDate; int? get itemCount; int? get status;
/// Create a copy of PrescriptionQueueItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionQueueItemCopyWith<PrescriptionQueueItem> get copyWith => _$PrescriptionQueueItemCopyWithImpl<PrescriptionQueueItem>(this as PrescriptionQueueItem, _$identity);

  /// Serializes this PrescriptionQueueItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionQueueItem&&(identical(other.prescriptionId, prescriptionId) || other.prescriptionId == prescriptionId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.prescriptionDate, prescriptionDate) || other.prescriptionDate == prescriptionDate)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionId,patientName,doctorName,prescriptionDate,itemCount,status);

@override
String toString() {
  return 'PrescriptionQueueItem(prescriptionId: $prescriptionId, patientName: $patientName, doctorName: $doctorName, prescriptionDate: $prescriptionDate, itemCount: $itemCount, status: $status)';
}


}

/// @nodoc
abstract mixin class $PrescriptionQueueItemCopyWith<$Res>  {
  factory $PrescriptionQueueItemCopyWith(PrescriptionQueueItem value, $Res Function(PrescriptionQueueItem) _then) = _$PrescriptionQueueItemCopyWithImpl;
@useResult
$Res call({
 int? prescriptionId, String? patientName, String? doctorName, DateTime? prescriptionDate, int? itemCount, int? status
});




}
/// @nodoc
class _$PrescriptionQueueItemCopyWithImpl<$Res>
    implements $PrescriptionQueueItemCopyWith<$Res> {
  _$PrescriptionQueueItemCopyWithImpl(this._self, this._then);

  final PrescriptionQueueItem _self;
  final $Res Function(PrescriptionQueueItem) _then;

/// Create a copy of PrescriptionQueueItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prescriptionId = freezed,Object? patientName = freezed,Object? doctorName = freezed,Object? prescriptionDate = freezed,Object? itemCount = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
prescriptionId: freezed == prescriptionId ? _self.prescriptionId : prescriptionId // ignore: cast_nullable_to_non_nullable
as int?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,prescriptionDate: freezed == prescriptionDate ? _self.prescriptionDate : prescriptionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrescriptionQueueItem].
extension PrescriptionQueueItemPatterns on PrescriptionQueueItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( Prescription_QueueItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case Prescription_QueueItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( Prescription_QueueItem value)  $default,){
final _that = this;
switch (_that) {
case Prescription_QueueItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( Prescription_QueueItem value)?  $default,){
final _that = this;
switch (_that) {
case Prescription_QueueItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? prescriptionId,  String? patientName,  String? doctorName,  DateTime? prescriptionDate,  int? itemCount,  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case Prescription_QueueItem() when $default != null:
return $default(_that.prescriptionId,_that.patientName,_that.doctorName,_that.prescriptionDate,_that.itemCount,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? prescriptionId,  String? patientName,  String? doctorName,  DateTime? prescriptionDate,  int? itemCount,  int? status)  $default,) {final _that = this;
switch (_that) {
case Prescription_QueueItem():
return $default(_that.prescriptionId,_that.patientName,_that.doctorName,_that.prescriptionDate,_that.itemCount,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? prescriptionId,  String? patientName,  String? doctorName,  DateTime? prescriptionDate,  int? itemCount,  int? status)?  $default,) {final _that = this;
switch (_that) {
case Prescription_QueueItem() when $default != null:
return $default(_that.prescriptionId,_that.patientName,_that.doctorName,_that.prescriptionDate,_that.itemCount,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class Prescription_QueueItem implements PrescriptionQueueItem {
   Prescription_QueueItem({this.prescriptionId, this.patientName, this.doctorName, this.prescriptionDate, this.itemCount, this.status});
  factory Prescription_QueueItem.fromJson(Map<String, dynamic> json) => _$Prescription_QueueItemFromJson(json);

@override final  int? prescriptionId;
@override final  String? patientName;
@override final  String? doctorName;
@override final  DateTime? prescriptionDate;
@override final  int? itemCount;
@override final  int? status;

/// Create a copy of PrescriptionQueueItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Prescription_QueueItemCopyWith<Prescription_QueueItem> get copyWith => _$Prescription_QueueItemCopyWithImpl<Prescription_QueueItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Prescription_QueueItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Prescription_QueueItem&&(identical(other.prescriptionId, prescriptionId) || other.prescriptionId == prescriptionId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.prescriptionDate, prescriptionDate) || other.prescriptionDate == prescriptionDate)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionId,patientName,doctorName,prescriptionDate,itemCount,status);

@override
String toString() {
  return 'PrescriptionQueueItem(prescriptionId: $prescriptionId, patientName: $patientName, doctorName: $doctorName, prescriptionDate: $prescriptionDate, itemCount: $itemCount, status: $status)';
}


}

/// @nodoc
abstract mixin class $Prescription_QueueItemCopyWith<$Res> implements $PrescriptionQueueItemCopyWith<$Res> {
  factory $Prescription_QueueItemCopyWith(Prescription_QueueItem value, $Res Function(Prescription_QueueItem) _then) = _$Prescription_QueueItemCopyWithImpl;
@override @useResult
$Res call({
 int? prescriptionId, String? patientName, String? doctorName, DateTime? prescriptionDate, int? itemCount, int? status
});




}
/// @nodoc
class _$Prescription_QueueItemCopyWithImpl<$Res>
    implements $Prescription_QueueItemCopyWith<$Res> {
  _$Prescription_QueueItemCopyWithImpl(this._self, this._then);

  final Prescription_QueueItem _self;
  final $Res Function(Prescription_QueueItem) _then;

/// Create a copy of PrescriptionQueueItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prescriptionId = freezed,Object? patientName = freezed,Object? doctorName = freezed,Object? prescriptionDate = freezed,Object? itemCount = freezed,Object? status = freezed,}) {
  return _then(Prescription_QueueItem(
prescriptionId: freezed == prescriptionId ? _self.prescriptionId : prescriptionId // ignore: cast_nullable_to_non_nullable
as int?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,prescriptionDate: freezed == prescriptionDate ? _self.prescriptionDate : prescriptionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
