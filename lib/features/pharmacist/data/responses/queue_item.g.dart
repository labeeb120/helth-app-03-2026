// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prescription_QueueItem _$Prescription_QueueItemFromJson(
  Map<String, dynamic> json,
) => Prescription_QueueItem(
  prescriptionId: (json['prescriptionId'] as num?)?.toInt(),
  patientName: json['patientName'] as String?,
  doctorName: json['doctorName'] as String?,
  prescriptionDate: json['prescriptionDate'] == null
      ? null
      : DateTime.parse(json['prescriptionDate'] as String),
  itemCount: (json['itemCount'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
);

Map<String, dynamic> _$Prescription_QueueItemToJson(
  Prescription_QueueItem instance,
) => <String, dynamic>{
  'prescriptionId': instance.prescriptionId,
  'patientName': instance.patientName,
  'doctorName': instance.doctorName,
  'prescriptionDate': instance.prescriptionDate?.toIso8601String(),
  'itemCount': instance.itemCount,
  'status': instance.status,
};
