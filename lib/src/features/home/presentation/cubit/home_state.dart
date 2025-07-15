import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/fetch_visits_response.dart';

part 'home_state.freezed.dart';

enum HomeStatus {
  initial,
  fetchAllVisitsLoading,
  fetchAllVisitsSuccess,
  fetchAllVisitsFailure,
  retryAnotherCardId,
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStatus status,
    String? error,
    FetchVisitsResponse? fetchAllVisitsResponse,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(status: HomeStatus.initial);
}
