// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralStatusResponse _$GeneralStatusResponseFromJson(
  Map<String, dynamic> json,
) => GeneralStatusResponse(
  message: json['message'] as String? ?? '',
  success: json['success'] as bool? ?? false,
);

Map<String, dynamic> _$GeneralStatusResponseToJson(
  GeneralStatusResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
