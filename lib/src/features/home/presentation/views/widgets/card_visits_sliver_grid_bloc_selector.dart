// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shadcn_ui/shadcn_ui.dart';
// import 'package:visits_system/src/core/helpers/extensions.dart';

// import '../../../../../core/router/routes.dart';
// import '../../../../../core/widgets/main_footer.dart';
// import '../../../data/models/fetch_visits_response.dart';
// import '../../cubit/home_cubit.dart';
// import '../../cubit/home_state.dart';
// import 'visit_card_body.dart';

// class CardVisitsSliverGridBlocSelector extends StatelessWidget {
//   const CardVisitsSliverGridBlocSelector({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<HomeCubit, HomeState, FetchVisitsResponse?>(
//       selector: (state) => state.fetchAllVisitsResponse,
//       builder: (context, cardData) =>
//           : const SliverToBoxAdapter(child: SizedBox.shrink()),
//     );
//   }
// }
