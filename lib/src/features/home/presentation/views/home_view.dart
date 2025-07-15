import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visits_system/src/features/home/presentation/cubit/home_cubit.dart';

import '../../../../core/locale/locale_keys.dart';
import '../../../../core/widgets/custom_data_input.dart';
import 'widgets/card_visits_sliver_grid_bloc_selector.dart';
import 'widgets/fetch_visits_button_bloc_consumer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  spacing: 24.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomDataInput(
                      controller: context.read<HomeCubit>().cardIdController,
                      labelText: LocaleKeys.cardId,
                      placeholderText: LocaleKeys.enterCardId,
                      keyboardType: TextInputType.number,
                    ),
                    const FetchVisitsButtonBlocConsumer(),
                  ],
                ),
              ),
              const CardVisitsSliverGridBlocSelector(),
            ],
          ),
        ),
      ),
    );
  }
}
