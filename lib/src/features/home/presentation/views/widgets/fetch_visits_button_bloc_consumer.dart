import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class FetchVisitsButtonBlocConsumer extends StatelessWidget {
  const FetchVisitsButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => PrimaryButton(
        onPressed: () => context.read<HomeCubit>().fetchAllVisits(),
        text: LocaleKeys.fetchVisits,
        child: state.status == HomeStatus.fetchAllVisitsLoading
            ? const AdaptiveCircularProgressIndicator()
            : null,
      ),
    );
  }

  void _listener(HomeState<dynamic> state, BuildContext context) {
    switch (state.status) {
      case HomeStatus.fetchAllVisitsFailure:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenWhen(HomeStatus status) =>
      status == HomeStatus.fetchAllVisitsFailure;

  bool _buildWhen(HomeStatus status) =>
      status == HomeStatus.fetchAllVisitsLoading ||
      status == HomeStatus.fetchAllVisitsSuccess ||
      status == HomeStatus.fetchAllVisitsFailure;
}
