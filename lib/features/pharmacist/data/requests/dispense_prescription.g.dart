// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispense_prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrescriptionItem _$PrescriptionItemFromJson(Map<String, dynamic> json) =>
    _PrescriptionItem(
      prescriptionItemId: (json['prescriptionItemId'] as num).toInt(),
      dispensed: json['dispensed'] as bool,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$PrescriptionItemToJson(_PrescriptionItem instance) =>
    <String, dynamic>{
      'prescriptionItemId': instance.prescriptionItemId,
      'dispensed': instance.dispensed,
      'notes': instance.notes,
    };

_DispensePrescriptionRequest _$DispensePrescriptionRequestFromJson(
  Map<String, dynamic> json,
) => _DispensePrescriptionRequest(
  prescriptionId: (json['prescriptionId'] as num).toInt(),
  notes: json['notes'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PrescriptionItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DispensePrescriptionRequestToJson(
  _DispensePrescriptionRequest instance,
) => <String, dynamic>{
  'prescriptionId': instance.prescriptionId,
  'notes': instance.notes,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
