// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drugs_interaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warnings _$WarningsFromJson(Map<String, dynamic> json) => Warnings(
  medication1: json['medication1'] as String?,
  medication2: json['medication2'] as String?,
  severity: json['severity'] as String?,
  description: json['description'] as String?,
  recommendation: json['recommendation'] as String?,
);

Map<String, dynamic> _$WarningsToJson(Warnings instance) => <String, dynamic>{
  'medication1': instance.medication1,
  'medication2': instance.medication2,
  'severity': instance.severity,
  'description': instance.description,
  'recommendation': instance.recommendation,
};

ComparisonStep _$ComparisonStepFromJson(Map<String, dynamic> json) =>
    ComparisonStep(
      ingredientA: json['ingredientA'] as String?,
      ingredientB: json['ingredientB'] as String?,
      interactionFound: json['interactionFound'] as bool? ?? false,
    );

Map<String, dynamic> _$ComparisonStepToJson(ComparisonStep instance) =>
    <String, dynamic>{
      'ingredientA': instance.ingredientA,
      'ingredientB': instance.ingredientB,
      'interactionFound': instance.interactionFound,
    };

DrugsInteractionsResponse _$DrugsInteractionsResponseFromJson(
  Map<String, dynamic> json,
) => DrugsInteractionsResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  warnings:
      (json['warnings'] as List<dynamic>?)
          ?.map((e) => Warnings.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasInteractions: json['hasInteractions'] as bool? ?? false,
  comparisonSteps:
      (json['comparisonSteps'] as List<dynamic>?)
          ?.map((e) => ComparisonStep.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DrugsInteractionsResponseToJson(
  DrugsInteractionsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'warnings': instance.warnings,
  'hasInteractions': instance.hasInteractions,
  'comparisonSteps': instance.comparisonSteps,
};
