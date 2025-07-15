import 'package:flutter/material.dart' show TextEditingController;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/api/api_request_result.dart';

import '../../data/repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _repo;

  HomeCubit(this._repo) : super(const HomeState.initial());

  final cardIdController = TextEditingController();

  void fetchAllVisits() async {
    emit(const HomeState.fetchAllVisitsLoading());
    final result = await _repo.fetchAllVisits(
      int.parse(cardIdController.text.trim()),
    );
    result.when(
      success: (data) => emit(HomeState.fetchAllVisitsSuccess(data)),
      failure: (failure) =>
          emit(HomeState.fetchAllVisitsFailure(failure.message)),
    );
  }

  @override
  Future<void> close() {
    cardIdController.dispose();
    return super.close();
  }
}
