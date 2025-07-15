import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/home_api_service.dart';
import '../models/fetch_visits_response.dart';

class HomeRepo {
  final HomeApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiRequestResult<FetchVisitsResponse>> fetchAllVisits(int cardId) {
    return executeAndHandleErrors<FetchVisitsResponse>(
      () async => await _apiService.fetchAllVisits(cardId),
    );
  }
}
