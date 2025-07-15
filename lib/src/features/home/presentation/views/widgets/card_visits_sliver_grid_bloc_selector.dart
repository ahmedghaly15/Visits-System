import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/router/routes.dart';
import '../../../data/models/fetch_visits_response.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';
import 'visit_card_body.dart';

class CardVisitsSliverGridBlocSelector extends StatelessWidget {
  const CardVisitsSliverGridBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, FetchVisitsResponse?>(
      selector: (state) => state.fetchAllVisitsResponse,
      builder: (context, cardData) => cardData != null
          ? SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (_, index) => GestureDetector(
                onTap: () => context.pushNamed(
                  Routes.cardVisitors,
                  arguments: cardData.visits[index].visitors,
                ),
                child: ShadCard(
                  radius: BorderRadius.circular(16.r),
                  title: Text(
                    cardData.visits[index].employeeNameInVisit ?? 'A7a ya3am',
                    style: context.shadTextTheme.h4,
                  ),

                  child: VisitCardBody(visit: cardData.visits[index]),
                ),
              ),
              itemCount: cardData.visits.length,
            )
          : const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }
}
