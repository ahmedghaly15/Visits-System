import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/login_api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_request_response.dart';

class LoginRepo {
  final LoginApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiRequestResult<LoginRequestResponse>> login(
    LoginRequestBody requestBody,
  ) {
    return executeAndHandleErrors<LoginRequestResponse>(
      () async => await _apiService.login(requestBody),
    );
  }
}
