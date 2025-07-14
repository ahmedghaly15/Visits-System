import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/end_points.dart';
import '../models/login_request_body.dart';
import '../models/login_request_response.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(EndPoints.login)
  Future<LoginRequestResponse> login(@Body() LoginRequestBody loginRequestBody);
}
