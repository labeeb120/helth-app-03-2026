// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrescriptionList _$PrescriptionListFromJson(Map<String, dynamic> json) =>
    _PrescriptionList(
      prescriptions: (json['prescriptions'] as List<dynamic>)
          .map((e) => Prescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      patientCode: json['patientCode'] as String?,
    );

Map<String, dynamic> _$PrescriptionListToJson(_PrescriptionList instance) =>
    <String, dynamic>{
      'prescriptions': instance.prescriptions,
      'patientCode': instance.patientCode,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Prescriptions)
const prescriptionsProvider = PrescriptionsProvider._();

final class PrescriptionsProvider
    extends $NotifierProvider<Prescriptions, PrescriptionList> {
  const PrescriptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prescriptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prescriptionsHash();

  @$internal
  @override
  Prescriptions create() => Prescriptions();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrescriptionList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrescriptionList>(value),
    );
  }
}

String _$prescriptionsHash() => r'87b836d13d2e25e947b14edeb783d94abef96aeb';

abstract class _$Prescriptions extends $Notifier<PrescriptionList> {
  PrescriptionList build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PrescriptionList, PrescriptionList>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PrescriptionList, PrescriptionList>,
              PrescriptionList,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
