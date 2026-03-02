import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_app/core/error/app_error.dart' show ErrorOrPatterns;
import 'package:health_app/di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/prescription.dart';

part 'prescriptions.freezed.dart';
part 'prescriptions.g.dart';

@freezed
abstract class PrescriptionList with _$PrescriptionList {
  factory PrescriptionList({
    required List<Prescription> prescriptions,
    String? patientCode,
  }) = _PrescriptionList;

  factory PrescriptionList.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionListFromJson(json);
}

@riverpod
class Prescriptions extends _$Prescriptions {
  @override
  PrescriptionList build() {
    ref.keepAlive();

    return PrescriptionList(prescriptions: []);
  }

  void setPrescriptions(List<Prescription> prescriptions, {String? code}) {
    state = PrescriptionList(prescriptions: prescriptions, patientCode: code);
  }

  Future<void> refreshPrescriptions(String id) async {
    final res = await appRepo.searchPrescription(id);
    res.when(
      success: (data) {
        setPrescriptions(data.prescriptions, code: id);
      },
      error: (e) {},
    );
  }

  Future<void> refresh() async {
    final c = state.patientCode;

    if (c != null) {
      await refreshPrescriptions(c);
    }
  }
}
