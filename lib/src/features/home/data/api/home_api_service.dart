import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/end_points.dart';
import '../models/fetch_visits_response.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(EndPoints.getAllVisits)
  Future<FetchVisitsResponse> fetchAllVisits(@Query('CardId') int cardId);
}
