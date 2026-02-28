// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispense_prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrescriptionItem {

 int get prescriptionItemId; bool get dispensed; String get notes;
/// Create a copy of PrescriptionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionItemCopyWith<PrescriptionItem> get copyWith => _$PrescriptionItemCopyWithImpl<PrescriptionItem>(this as PrescriptionItem, _$identity);

  /// Serializes this PrescriptionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionItem&&(identical(other.prescriptionItemId, prescriptionItemId) || other.prescriptionItemId == prescriptionItemId)&&(identical(other.dispensed, dispensed) || other.dispensed == dispensed)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionItemId,dispensed,notes);

@override
String toString() {
  return 'PrescriptionItem(prescriptionItemId: $prescriptionItemId, dispensed: $dispensed, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PrescriptionItemCopyWith<$Res>  {
  factory $PrescriptionItemCopyWith(PrescriptionItem value, $Res Function(PrescriptionItem) _then) = _$PrescriptionItemCopyWithImpl;
@useResult
$Res call({
 int prescriptionItemId, bool dispensed, String notes
});




}
/// @nodoc
class _$PrescriptionItemCopyWithImpl<$Res>
    implements $PrescriptionItemCopyWith<$Res> {
  _$PrescriptionItemCopyWithImpl(this._self, this._then);

  final PrescriptionItem _self;
  final $Res Function(PrescriptionItem) _then;

/// Create a copy of PrescriptionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prescriptionItemId = null,Object? dispensed = null,Object? notes = null,}) {
  return _then(_self.copyWith(
prescriptionItemId: null == prescriptionItemId ? _self.prescriptionItemId : prescriptionItemId // ignore: cast_nullable_to_non_nullable
as int,dispensed: null == dispensed ? _self.dispensed : dispensed // ignore: cast_nullable_to_non_nullable
as bool,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PrescriptionItem].
extension PrescriptionItemPatterns on PrescriptionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrescriptionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrescriptionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrescriptionItem value)  $default,){
final _that = this;
switch (_that) {
case _PrescriptionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrescriptionItem value)?  $default,){
final _that = this;
switch (_that) {
case _PrescriptionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int prescriptionItemId,  bool dispensed,  String notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrescriptionItem() when $default != null:
return $default(_that.prescriptionItemId,_that.dispensed,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int prescriptionItemId,  bool dispensed,  String notes)  $default,) {final _that = this;
switch (_that) {
case _PrescriptionItem():
return $default(_that.prescriptionItemId,_that.dispensed,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int prescriptionItemId,  bool dispensed,  String notes)?  $default,) {final _that = this;
switch (_that) {
case _PrescriptionItem() when $default != null:
return $default(_that.prescriptionItemId,_that.dispensed,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrescriptionItem implements PrescriptionItem {
   _PrescriptionItem({required this.prescriptionItemId, required this.dispensed, required this.notes});
  factory _PrescriptionItem.fromJson(Map<String, dynamic> json) => _$PrescriptionItemFromJson(json);

@override final  int prescriptionItemId;
@override final  bool dispensed;
@override final  String notes;

/// Create a copy of PrescriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrescriptionItemCopyWith<_PrescriptionItem> get copyWith => __$PrescriptionItemCopyWithImpl<_PrescriptionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrescriptionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrescriptionItem&&(identical(other.prescriptionItemId, prescriptionItemId) || other.prescriptionItemId == prescriptionItemId)&&(identical(other.dispensed, dispensed) || other.dispensed == dispensed)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionItemId,dispensed,notes);

@override
String toString() {
  return 'PrescriptionItem(prescriptionItemId: $prescriptionItemId, dispensed: $dispensed, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PrescriptionItemCopyWith<$Res> implements $PrescriptionItemCopyWith<$Res> {
  factory _$PrescriptionItemCopyWith(_PrescriptionItem value, $Res Function(_PrescriptionItem) _then) = __$PrescriptionItemCopyWithImpl;
@override @useResult
$Res call({
 int prescriptionItemId, bool dispensed, String notes
});




}
/// @nodoc
class __$PrescriptionItemCopyWithImpl<$Res>
    implements _$PrescriptionItemCopyWith<$Res> {
  __$PrescriptionItemCopyWithImpl(this._self, this._then);

  final _PrescriptionItem _self;
  final $Res Function(_PrescriptionItem) _then;

/// Create a copy of PrescriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prescriptionItemId = null,Object? dispensed = null,Object? notes = null,}) {
  return _then(_PrescriptionItem(
prescriptionItemId: null == prescriptionItemId ? _self.prescriptionItemId : prescriptionItemId // ignore: cast_nullable_to_non_nullable
as int,dispensed: null == dispensed ? _self.dispensed : dispensed // ignore: cast_nullable_to_non_nullable
as bool,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DispensePrescriptionRequest {

 int get prescriptionId; String get notes; List<PrescriptionItem> get items;
/// Create a copy of DispensePrescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DispensePrescriptionRequestCopyWith<DispensePrescriptionRequest> get copyWith => _$DispensePrescriptionRequestCopyWithImpl<DispensePrescriptionRequest>(this as DispensePrescriptionRequest, _$identity);

  /// Serializes this DispensePrescriptionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DispensePrescriptionRequest&&(identical(other.prescriptionId, prescriptionId) || other.prescriptionId == prescriptionId)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionId,notes,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'DispensePrescriptionRequest(prescriptionId: $prescriptionId, notes: $notes, items: $items)';
}


}

/// @nodoc
abstract mixin class $DispensePrescriptionRequestCopyWith<$Res>  {
  factory $DispensePrescriptionRequestCopyWith(DispensePrescriptionRequest value, $Res Function(DispensePrescriptionRequest) _then) = _$DispensePrescriptionRequestCopyWithImpl;
@useResult
$Res call({
 int prescriptionId, String notes, List<PrescriptionItem> items
});




}
/// @nodoc
class _$DispensePrescriptionRequestCopyWithImpl<$Res>
    implements $DispensePrescriptionRequestCopyWith<$Res> {
  _$DispensePrescriptionRequestCopyWithImpl(this._self, this._then);

  final DispensePrescriptionRequest _self;
  final $Res Function(DispensePrescriptionRequest) _then;

/// Create a copy of DispensePrescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prescriptionId = null,Object? notes = null,Object? items = null,}) {
  return _then(_self.copyWith(
prescriptionId: null == prescriptionId ? _self.prescriptionId : prescriptionId // ignore: cast_nullable_to_non_nullable
as int,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PrescriptionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [DispensePrescriptionRequest].
extension DispensePrescriptionRequestPatterns on DispensePrescriptionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DispensePrescriptionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DispensePrescriptionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DispensePrescriptionRequest value)  $default,){
final _that = this;
switch (_that) {
case _DispensePrescriptionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DispensePrescriptionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DispensePrescriptionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int prescriptionId,  String notes,  List<PrescriptionItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DispensePrescriptionRequest() when $default != null:
return $default(_that.prescriptionId,_that.notes,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int prescriptionId,  String notes,  List<PrescriptionItem> items)  $default,) {final _that = this;
switch (_that) {
case _DispensePrescriptionRequest():
return $default(_that.prescriptionId,_that.notes,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int prescriptionId,  String notes,  List<PrescriptionItem> items)?  $default,) {final _that = this;
switch (_that) {
case _DispensePrescriptionRequest() when $default != null:
return $default(_that.prescriptionId,_that.notes,_that.items);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _DispensePrescriptionRequest implements DispensePrescriptionRequest {
   _DispensePrescriptionRequest({required this.prescriptionId, required this.notes, final  List<PrescriptionItem> items = const []}): _items = items;
  factory _DispensePrescriptionRequest.fromJson(Map<String, dynamic> json) => _$DispensePrescriptionRequestFromJson(json);

@override final  int prescriptionId;
@override final  String notes;
 final  List<PrescriptionItem> _items;
@override@JsonKey() List<PrescriptionItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of DispensePrescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DispensePrescriptionRequestCopyWith<_DispensePrescriptionRequest> get copyWith => __$DispensePrescriptionRequestCopyWithImpl<_DispensePrescriptionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DispensePrescriptionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DispensePrescriptionRequest&&(identical(other.prescriptionId, prescriptionId) || other.prescriptionId == prescriptionId)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prescriptionId,notes,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'DispensePrescriptionRequest(prescriptionId: $prescriptionId, notes: $notes, items: $items)';
}


}

/// @nodoc
abstract mixin class _$DispensePrescriptionRequestCopyWith<$Res> implements $DispensePrescriptionRequestCopyWith<$Res> {
  factory _$DispensePrescriptionRequestCopyWith(_DispensePrescriptionRequest value, $Res Function(_DispensePrescriptionRequest) _then) = __$DispensePrescriptionRequestCopyWithImpl;
@override @useResult
$Res call({
 int prescriptionId, String notes, List<PrescriptionItem> items
});




}
/// @nodoc
class __$DispensePrescriptionRequestCopyWithImpl<$Res>
    implements _$DispensePrescriptionRequestCopyWith<$Res> {
  __$DispensePrescriptionRequestCopyWithImpl(this._self, this._then);

  final _DispensePrescriptionRequest _self;
  final $Res Function(_DispensePrescriptionRequest) _then;

/// Create a copy of DispensePrescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prescriptionId = null,Object? notes = null,Object? items = null,}) {
  return _then(_DispensePrescriptionRequest(
prescriptionId: null == prescriptionId ? _self.prescriptionId : prescriptionId // ignore: cast_nullable_to_non_nullable
as int,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PrescriptionItem>,
  ));
}


}

// dart format on
