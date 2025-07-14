// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestResponse _$LoginRequestResponseFromJson(
  Map<String, dynamic> json,
) => LoginRequestResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tokens: (json['data'] as List<dynamic>)
      .map((e) => LoginDataToken.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LoginRequestResponseToJson(
  LoginRequestResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'errors': instance.errors,
  'data': instance.tokens.map((e) => e.toJson()).toList(),
};

LoginDataToken _$LoginDataTokenFromJson(Map<String, dynamic> json) =>
    LoginDataToken(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$LoginDataTokenToJson(LoginDataToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
