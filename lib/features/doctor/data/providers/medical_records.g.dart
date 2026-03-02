// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_records.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MedicalRecordsStore)
const medicalRecordsStoreProvider = MedicalRecordsStoreProvider._();

final class MedicalRecordsStoreProvider
    extends $NotifierProvider<MedicalRecordsStore, MedicalRecordList> {
  const MedicalRecordsStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'medicalRecordsStoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$medicalRecordsStoreHash();

  @$internal
  @override
  MedicalRecordsStore create() => MedicalRecordsStore();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MedicalRecordList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MedicalRecordList>(value),
    );
  }
}

String _$medicalRecordsStoreHash() =>
    r'e1c50782ca87860bfaa51b4b18fcb7a859c1248f';

abstract class _$MedicalRecordsStore extends $Notifier<MedicalRecordList> {
  MedicalRecordList build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MedicalRecordList, MedicalRecordList>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MedicalRecordList, MedicalRecordList>,
              MedicalRecordList,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
