import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../data/models/fetch_visits_response.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class EnterAnotherCardNumButton extends StatelessWidget {
  const EnterAnotherCardNumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, FetchVisitsResponse?>(
      selector: (state) => state.fetchAllVisitsResponse,
      builder: (context, fetchAllVisitsResponse) =>
          fetchAllVisitsResponse != null
          ? PrimaryButton(
              expands: true,
              onPressed: () => context.read<HomeCubit>().retryAnotherCard(),
              text: LocaleKeys.backToHome,
            )
          : const SizedBox.shrink(),
    );
  }
}
