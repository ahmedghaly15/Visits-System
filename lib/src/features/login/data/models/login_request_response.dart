import 'package:json_annotation/json_annotation.dart';

part 'login_request_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequestResponse {
  final int statusCode;
  final String message;
  final List<String>? errors;
  @JsonKey(name: 'data')
  final List<LoginDataToken> tokens;

  LoginRequestResponse({
    required this.statusCode,
    required this.message,
    required this.errors,
    required this.tokens,
  });

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestResponseToJson(this);
}

@JsonSerializable()
class LoginDataToken {
  final String accessToken, refreshToken;

  LoginDataToken({required this.accessToken, required this.refreshToken});

  factory LoginDataToken.fromJson(Map<String, dynamic> json) =>
      _$LoginDataTokenFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataTokenToJson(this);
}
