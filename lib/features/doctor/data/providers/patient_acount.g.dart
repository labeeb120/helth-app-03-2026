// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_acount.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(patientAccount)
const patientAccountProvider = PatientAccountProvider._();

final class PatientAccountProvider
    extends $FunctionalProvider<dynamic, dynamic, dynamic>
    with $Provider<dynamic> {
  const PatientAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patientAccountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patientAccountHash();

  @$internal
  @override
  $ProviderElement<dynamic> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  dynamic create(Ref ref) {
    return patientAccount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$patientAccountHash() => r'3907308a3fe0693349fd5f27e048fa6e204865ac';
