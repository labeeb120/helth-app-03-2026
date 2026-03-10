import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
abstract class DoctorRegisterRequest with _$DoctorRegisterRequest {
  const factory DoctorRegisterRequest({
    required String nationalId,
    required String password,
    required String confirmPassword,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String licenseNumber,
    required String specialization,
    required String hospital,
    String? licenseDocument,
  }) = _DoctorRegisterRequest;

  factory DoctorRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$DoctorRegisterRequestFromJson(json);
}
