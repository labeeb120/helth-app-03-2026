import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_item.freezed.dart';
part 'queue_item.g.dart';

// {prescriptionId: 2020, patientName: د صلاح الصلاحي, doctorName: د صلاح الصلاحي fds fdsf , prescriptionDate: 2026-02-24T21:48:21.894825, itemCount: 1, status: 1}
@freezed
abstract class PrescriptionQueueItem with _$PrescriptionQueueItem {
  factory PrescriptionQueueItem({
    int? prescriptionId,
    String? patientName,
    String? doctorName,
    DateTime? prescriptionDate,
    int? itemCount,
    int? status,
  }) = Prescription_QueueItem;

  factory PrescriptionQueueItem.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionQueueItemFromJson(json);
}
