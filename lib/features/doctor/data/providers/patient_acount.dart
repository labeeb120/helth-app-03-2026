import 'package:health_app/di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_acount.g.dart';

@riverpod
patientAccount(Ref ref) {
  return appStorage.getPatientAccount();
}
