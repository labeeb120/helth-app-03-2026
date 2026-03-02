// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(patientEmergency)
const patientEmergencyProvider = PatientEmergencyProvider._();

final class PatientEmergencyProvider
    extends
        $FunctionalProvider<
          AsyncValue<EmergencyResponse>,
          EmergencyResponse,
          FutureOr<EmergencyResponse>
        >
    with
        $FutureModifier<EmergencyResponse>,
        $FutureProvider<EmergencyResponse> {
  const PatientEmergencyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patientEmergencyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patientEmergencyHash();

  @$internal
  @override
  $FutureProviderElement<EmergencyResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EmergencyResponse> create(Ref ref) {
    return patientEmergency(ref);
  }
}

String _$patientEmergencyHash() => r'582ed7a2288a243882c4ebcccc69303b5757f589';
