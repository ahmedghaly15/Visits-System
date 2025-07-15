import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/main_footer.dart';
import 'widgets/card_id_field_and_fetch_visits_button_bloc_selector.dart';
import 'widgets/card_visits_sliver_grid_bloc_selector.dart';
import 'widgets/enter_another_card_num_button.dart';
import 'widgets/logout_icon_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(actions: [LogoutIconButton()]),
              const CardIdFieldAndFetchVisitsButtonBlocSelector(),
              const CardVisitsSliverGridBlocSelector(),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 24.h),
                  child: const EnterAnotherCardNumButton(),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16.h),
                  child: const MainFooter(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
