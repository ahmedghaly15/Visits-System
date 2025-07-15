import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_data_input.dart';
import '../../../data/models/fetch_visits_response.dart';

class VisitCardBody extends StatelessWidget {
  const VisitCardBody({super.key, required this.visit});

  final FetchVisitsResponseItem visit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16.h,
      children: [
        CustomDataInput(enabled: false, initialValue: visit.visitDate),
        Row(
          spacing: 8.w,
          children: [
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitStateFromPolice,
              ),
            ),
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitStateFromPolice,
              ),
            ),
          ],
        ),
        Row(
          spacing: 8.w,
          children: [
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.isCreatedByDept.toString(),
              ),
            ),
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitType,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
