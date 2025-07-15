import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/widgets/custom_data_input.dart';
import '../../../../../core/widgets/main_footer.dart';
import '../../../data/models/fetch_visits_response.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';
import 'fetch_visits_button_bloc_consumer.dart';

class CardIdFieldAndFetchVisitsButtonBlocSelector extends StatelessWidget {
  const CardIdFieldAndFetchVisitsButtonBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, FetchVisitsResponse?>(
      selector: (state) => state.fetchAllVisitsResponse,
      builder: (context, fetchAllVisitsResponse) =>
          fetchAllVisitsResponse == null
          ? SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                spacing: 24.h,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  CustomDataInput(
                    controller: context.read<HomeCubit>().cardIdController,
                    labelText: LocaleKeys.cardId,
                    placeholderText: LocaleKeys.enterCardId,
                    keyboardType: TextInputType.number,
                  ),
                  const FetchVisitsButtonBlocConsumer(),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.h),
                    child: const MainFooter(),
                  ),
                ],
              ),
            )
          : const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }
}
