import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';
import 'package:visits_system/src/features/home/data/models/fetch_visits_response.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/widgets/main_footer.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import 'widgets/card_id_field_and_fetch_visits_button_bloc_selector.dart';
import 'widgets/enter_another_card_num_button.dart';
import 'widgets/logout_icon_button.dart';
import 'widgets/visit_card_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            top: 32.h,
            // bottom: 16.h,
          ),
          child: BlocSelector<HomeCubit, HomeState, FetchVisitsResponse?>(
            selector: (state) => state.fetchAllVisitsResponse,
            builder: (context, fetchAllVisitsResponse) {
              return fetchAllVisitsResponse != null
                  ? Column(
                      spacing: 16.h,
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: 16,
                                  crossAxisSpacing: 16,
                                  childAspectRatio: 0.8,
                                ),
                            itemBuilder: (_, index) => GestureDetector(
                              onTap: () => context.pushNamed(
                                Routes.cardVisitors,
                                arguments: fetchAllVisitsResponse
                                    .visits[index]
                                    .visitors,
                              ),
                              child: ShadCard(
                                radius: BorderRadius.circular(16.r),
                                title: Text(
                                  fetchAllVisitsResponse
                                          .visits[index]
                                          .employeeNameInVisit ??
                                      'A7a ya3am',
                                  style: context.shadTextTheme.h4,
                                ),

                                child: VisitCardBody(
                                  visit: fetchAllVisitsResponse.visits[index],
                                ),
                              ),
                            ),
                            itemCount: fetchAllVisitsResponse.visits.length,
                          ),
                        ),
                        const EnterAnotherCardNumButton(),
                        const MainFooter(),
                      ],
                    )
                  : const CustomScrollView(
                      slivers: [
                        SliverAppBar(actions: [LogoutIconButton()]),
                        CardIdFieldAndFetchVisitsButtonBlocSelector(),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
