import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/fetch_visits_response.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial<T>;
  const factory HomeState.fetchAllVisitsLoading() = FetchAllVisitsLoading<T>;
  const factory HomeState.fetchAllVisitsSuccess(FetchVisitsResponse data) =
      FetchAllVisitsSuccess<T>;
  const factory HomeState.fetchAllVisitsFailure(String message) =
      FetchAllVisitsFailure<T>;
}
