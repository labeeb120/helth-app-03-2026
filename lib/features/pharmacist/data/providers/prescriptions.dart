import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_app/auth_state.dart' show di;
import 'package:health_app/core/error/app_error.dart' show ErrorOrPatterns;
import 'package:health_app/shared/api/api_repositories.dart'
    show AppRepositories;

import '../../domain/models/prescription.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'prescriptions.g.dart';
part 'prescriptions.freezed.dart';

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
    final res = await di<AppRepositories>().searchPrescription(id);
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
