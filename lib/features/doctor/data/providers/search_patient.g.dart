// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicationSearchResult _$MedicationSearchResultFromJson(
  Map<String, dynamic> json,
) => _MedicationSearchResult(
  drugId: (json['drugId'] as num).toInt(),
  scientificName: json['scientificName'] as String?,
  brandName: json['brandName'] as String?,
  chemicalName: json['chemicalName'] as String?,
);

Map<String, dynamic> _$MedicationSearchResultToJson(
  _MedicationSearchResult instance,
) => <String, dynamic>{
  'drugId': instance.drugId,
  'scientificName': instance.scientificName,
  'brandName': instance.brandName,
  'chemicalName': instance.chemicalName,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchPatient)
const searchPatientProvider = SearchPatientFamily._();

final class SearchPatientProvider
    extends
        $FunctionalProvider<
          AsyncValue<ErrorOr<Patient?>>,
          ErrorOr<Patient?>,
          FutureOr<ErrorOr<Patient?>>
        >
    with
        $FutureModifier<ErrorOr<Patient?>>,
        $FutureProvider<ErrorOr<Patient?>> {
  const SearchPatientProvider._({
    required SearchPatientFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchPatientProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchPatientHash();

  @override
  String toString() {
    return r'searchPatientProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ErrorOr<Patient?>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ErrorOr<Patient?>> create(Ref ref) {
    final argument = this.argument as String;
    return searchPatient(ref, identifier: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchPatientProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchPatientHash() => r'930caa299f06fca577a93ad853c38af66fa0886f';

final class SearchPatientFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ErrorOr<Patient?>>, String> {
  const SearchPatientFamily._()
    : super(
        retry: null,
        name: r'searchPatientProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchPatientProvider call({required String identifier}) =>
      SearchPatientProvider._(argument: identifier, from: this);

  @override
  String toString() => r'searchPatientProvider';
}

@ProviderFor(searchMedication)
const searchMedicationProvider = SearchMedicationFamily._();

final class SearchMedicationProvider
    extends
        $FunctionalProvider<
          AsyncValue<ErrorOr<List<MedicationSearchResult>>>,
          ErrorOr<List<MedicationSearchResult>>,
          FutureOr<ErrorOr<List<MedicationSearchResult>>>
        >
    with
        $FutureModifier<ErrorOr<List<MedicationSearchResult>>>,
        $FutureProvider<ErrorOr<List<MedicationSearchResult>>> {
  const SearchMedicationProvider._({
    required SearchMedicationFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchMedicationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchMedicationHash();

  @override
  String toString() {
    return r'searchMedicationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ErrorOr<List<MedicationSearchResult>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ErrorOr<List<MedicationSearchResult>>> create(Ref ref) {
    final argument = this.argument as String;
    return searchMedication(ref, identifier: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMedicationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchMedicationHash() => r'08f51e72ec1a377895c44666b53d4b6d8db0d2da';

final class SearchMedicationFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ErrorOr<List<MedicationSearchResult>>>,
          String
        > {
  const SearchMedicationFamily._()
    : super(
        retry: null,
        name: r'searchMedicationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchMedicationProvider call({required String identifier}) =>
      SearchMedicationProvider._(argument: identifier, from: this);

  @override
  String toString() => r'searchMedicationProvider';
}

@ProviderFor(MedicationSearchResults)
const medicationSearchResultsProvider = MedicationSearchResultsProvider._();

final class MedicationSearchResultsProvider
    extends
        $NotifierProvider<
          MedicationSearchResults,
          List<MedicationSearchResult>
        > {
  const MedicationSearchResultsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'medicationSearchResultsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$medicationSearchResultsHash();

  @$internal
  @override
  MedicationSearchResults create() => MedicationSearchResults();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MedicationSearchResult> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MedicationSearchResult>>(value),
    );
  }
}

String _$medicationSearchResultsHash() =>
    r'8284e0a1b12fe6402bd86e7479359e5a3b650273';

abstract class _$MedicationSearchResults
    extends $Notifier<List<MedicationSearchResult>> {
  List<MedicationSearchResult> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<List<MedicationSearchResult>, List<MedicationSearchResult>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                List<MedicationSearchResult>,
                List<MedicationSearchResult>
              >,
              List<MedicationSearchResult>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
