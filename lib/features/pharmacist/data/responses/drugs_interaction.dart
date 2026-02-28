import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_app/features/auth/data/responses/base/base_response.dart';

// part 'drugs_interaction.freezed.dart';
part 'drugs_interaction.g.dart';

// @freezed
// class DrugsInteractionsResponse with _$DrugsInteractionsResponse {
//   factory DrugsInteractionsResponse({
//     @Default(false) bool success,
//     @Default('') String message,
//     List warnings,
//     bool hasInteractions,
//   }) = _DrugsInteractionsResponse;

//   factory DrugsInteractionsResponse.fromJson(Map<String, dynamic> json) =>
//       _$DrugsInteractionsResponseFromJson(json);
// }

@JsonSerializable()
class Warnings {
  final String? medication1;
  final String? medication2;
  final String? severity;
  final String? description;
  final String? recommendation;

  Warnings({
    this.medication1,
    this.medication2,
    this.severity,
    this.description,
    this.recommendation,
  });

  factory Warnings.fromJson(Map<String, dynamic> json) =>
      _$WarningsFromJson(json);
  Map<String, dynamic> toJson() => _$WarningsToJson(this);
}

@JsonSerializable()
class ComparisonStep {
  final String? ingredientA;
  final String? ingredientB;
  final bool interactionFound;

  ComparisonStep({
    this.ingredientA,
    this.ingredientB,
    this.interactionFound = false,
  });

  factory ComparisonStep.fromJson(Map<String, dynamic> json) =>
      _$ComparisonStepFromJson(json);
  Map<String, dynamic> toJson() => _$ComparisonStepToJson(this);
}

@JsonSerializable()
class DrugsInteractionsResponse extends BaseResponse {
  final List<Warnings> warnings;
  final bool hasInteractions;
  final List<ComparisonStep> comparisonSteps;
  DrugsInteractionsResponse({
    super.success,
    super.message,
    this.warnings = const [],
    this.hasInteractions = false,
    this.comparisonSteps = const [],
  });

  factory DrugsInteractionsResponse.fromJson(Map<String, dynamic> json) {
    return _$DrugsInteractionsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DrugsInteractionsResponseToJson(this);
}
