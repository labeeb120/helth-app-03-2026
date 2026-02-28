// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispense_prescription.freezed.dart';
part 'dispense_prescription.g.dart';

@freezed
abstract class PrescriptionItem with _$PrescriptionItem {
  factory PrescriptionItem({
    required int prescriptionItemId,
    required bool dispensed,
    required String notes,
  }) = _PrescriptionItem;

  factory PrescriptionItem.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionItemFromJson(json);
}

//
@freezed
abstract class DispensePrescriptionRequest with _$DispensePrescriptionRequest {
  @JsonSerializable(explicitToJson: true)
  factory DispensePrescriptionRequest({
    required int prescriptionId,
    required String notes,
    @Default([]) List<PrescriptionItem> items,
  }) = _DispensePrescriptionRequest;

  factory DispensePrescriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$DispensePrescriptionRequestFromJson(json);
}
